@UserHeadCount = new @Meteor.Collection("userHeadCount")
Schema = {}

Schema.User = new SimpleSchema(
    userId:
        label: "使用者"
        type: String
        optional: true
        autoValue: ()->
            user = Meteor.user()
            if user
                if (this.isInsert) 
                  return Meteor.userId()
                else if (this.isUpsert) 
                  return {$setOnInsert: Meteor.userId()}
            else 
              this.unset() 
    name:
        label: "名稱"
        type: String
        optional: true
        autoValue: ()->
            if Meteor.user()
                if (this.isInsert) 
                  return Meteor.user().profile.name
                else if (this.isUpsert) 
                  return {$setOnInsert: Meteor.user().profile.name}
            else 
              this.unset()
    email:
        label: "Email"
        type: String
        regEx: SimpleSchema.RegEx.Email
        autoValue: ()->
            user = Meteor.user()
            if user
                if (@isInsert) 
                    if user.services['github']
                        return user.services['github'].email
                    else if user.services['facebook']
                        return user.services['facebook'].email
                    else
                        @unset()
                else if (@isUpsert) 
                    if user.services['github']
                        return {$setOnInsert: user.services['github'].email}
                    else if user.services['facebook']
                        return {$setOnInsert: user.services['facebook'].email}
                    else
                        @unset()
                  
            else 
              @unset()
    gender: 
        type: String,
        label: "性別"
        allowedValues: ['男', '女']
        optional: true
    website: 
        label: "個人網站"
        type: String,
        regEx: SimpleSchema.RegEx.Url
        optional: true
    
    salary: 
        type: Number,
        label: "薪資"
        min: 0
        optional: false
    skills: 
        type: [String]
        label: "技能"
        optional: true
    category: 
        type: String
        label: "類別"
        allowedValues: ['前端工程師', '後端工程師','Designer','其他']
        optional: false
    location: 
        type: [Object]
        label: "工作地點"
        optional: true
        
    summary: 
        type: String
        label: "自我介紹"
        optional: true
        max: 1000
    
    createdAt: 
        type: Date
        autoValue: ()->
            if (this.isInsert) 
              return new Date
            else if (this.isUpsert) 
              return {$setOnInsert: new Date}
            else 
              this.unset()
    updatedAt: 
        type: Date
        autoValue: ()->
          if this.isUpdate
            return new Date()
        denyInsert: true
        optional: true
)
@UserHeadCount.attachSchema(Schema.User);