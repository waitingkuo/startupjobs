
space_data = [
	{name:"please enter space's name"}
	{name:"混_hun", phone:"02-2363-6979", web:"https://www.facebook.com/huncoworkingspace", address:"和平東路一段104巷6號", image:"http://www.workspace.tw/images/sobipro/entries/232/gal3_large_429484_402945023118548_1587104351_n.jpg"},
	{name:"CLBC", phone:"02-2755-3915", web:"http://clbc.tw/", address:"復興南路一段293號3樓之1, 台北市, 106", image:"http://www.workspace.tw/images/sobipro/entries/286/gal1_large_coworking%20space_open%20office%201.JPG"},
	{name:"Changee", phone:"02-25555803", web:"http://www.changeeinfo.com/", address:"台北市南京西路18巷8-2號", image:"https://dl.dropboxusercontent.com/u/61210558/page/%E4%B8%AD%E5%B1%B1%E5%85%B1%E5%90%8C%E5%B7%A5%E4%BD%9C%E7%A9%BA%E9%96%93.jpg"},
	{name:"創立方", phone:"02-23419151#121", web:"http://www.iehnccu.com/", address:"台北市大安區金華街187號", image:"http://www.iehnccu.com/wp-content/uploads/2012/08/0915-Design-Thinking.jpg"},
	{name:"車庫咖啡", web:"http://chekucafe.com/", image:"http://cn.wsj.com/pictures/photo/BJ20131204101345/05.jpg"},
	{name:"Yser", phone:"03-6230117", web:"http://iaps.nctu.edu.tw/yes/index.php", address:"新竹市科學工業園區新安路5號4樓", image:"http://iaps.nctu.edu.tw/yes/images/rocketlauncher/blog/0-9.jpg"},
]


Template.spaceList.helpers
	spaces: -> Space.find()

Template.insertSpaceItem.helpers
	editingDoc: space_data[0]
