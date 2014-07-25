
space_data = [
	{name:"混_hun", phone:"02-2363-6979", web:"https://www.facebook.com/huncoworkingspace", address:"和平東路一段104巷6號", image:"http://www.workspace.tw/images/sobipro/entries/232/gal3_large_429484_402945023118548_1587104351_n.jpg"},
	{name:"CLBC", phone:"02-2755-3915", web:"http://clbc.tw/", address:"復興南路一段293號3樓之1, 台北市, 106", image:"http://www.workspace.tw/images/sobipro/entries/286/gal1_large_coworking%20space_open%20office%201.JPG"},
]

Template.coworking.helpers
	spaces: space_data

Template.insertSpaceItem.helpers
	editingDoc: space_data[0]
