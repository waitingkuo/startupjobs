# @Space = new Meteor.Collection "space"

@Space = new Meteor.Collection("space", {
    schema: {
        name: {
            type: String,
            label: "Name",
        },
        web: {
            type: String,
            label: "Web",
            optional: true,
        },
        phone: {
            type: String,
            label: "Phone",
            optional: true,
        },
        address: {
            type: String,
            label: "Phone",
            optional: true,
        },
        image: {
            type: String,
            label: "Phone",
            optional: true,
        },
    }
})