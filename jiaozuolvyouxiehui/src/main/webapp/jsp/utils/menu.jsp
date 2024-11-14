<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

var menus = [

	{
        "backMenu":[
            {
                "child":[
                    {
                        "buttons":[
                            "新增",
                            "修改",
                            "删除"
                        ],
                        "menu":"管理员管理",
                        "menuJump":"列表",
                        "tableName":"users"
                    }
                ],
                "menu":"管理员信息"
            }
            ,{
                "child":[
                    {
                        "buttons":[
                            "查看",
                            "新增",
                            "修改",
                            "删除"
                        ],
                        "menu":"用户管理",
                        "menuJump":"列表",
                        "tableName":"yonghu"
                    }
                ],
                "menu":"用户管理"
            }
            ,{
                "child":[
                    {
                        "buttons":[
                            "查看",
                            "新增",
                            "修改",
                            "删除"
                        ],
                        "menu":"景点管理",
                        "menuJump":"列表",
                        "tableName":"jingdian"
                    }
                    ,
                    {
                        "buttons":[
                            "查看",
                            "修改",
                            "删除"
                        ],
                        "menu":"景点留言管理",
                        "menuJump":"列表",
                        "tableName":"jingdianLiuyan"
                    }
                    ,
                    {
                        "buttons":[
                            "查看",
                            "删除"
                        ],
                        "menu":"景点收藏管理",
                        "menuJump":"列表",
                        "tableName":"jingdianCollection"
                    }
                ],
                "menu":"景点管理"
            }
            ,{
                "child":[
                    {
                        "buttons":[
                            "查看",
                            "新增",
                            "修改",
                            "删除"
                        ],
                        "menu":"路线管理",
                        "menuJump":"列表",
                        "tableName":"luxian"
                    }
                    ,
                    {
                        "buttons":[
                            "查看",
                            "删除"
                        ],
                        "menu":"路线收藏管理",
                        "menuJump":"列表",
                        "tableName":"luxianCollection"
                    }
                ],
                "menu":"路线管理"
            }
			,{
			    "child":[
			        {
			            "buttons":[
			                "查看",
			                "新增",
			                "修改",
			                "删除"
			            ],
			            "menu":"景点类型管理",
			            "menuJump":"列表",
			            "tableName":"dictionaryJingdian"
			        }
			        ,
			        {
			            "buttons":[
			                "查看",
			                "新增",
			                "修改",
			                "删除"
			            ],
			            "menu":"景点等级管理",
			            "menuJump":"列表",
			            "tableName":"dictionaryJingdianDengji"
			        }
			        ,
			        {
			            "buttons":[
			                "查看",
			                "新增",
			                "修改",
			                "删除"
			            ],
			            "menu":"路线类型管理",
			            "menuJump":"列表",
			            "tableName":"dictionaryLuxian"
			        }
			        ,
			        {
			            "buttons":[
			                "查看",
			                "新增",
			                "修改",
			                "删除"
			            ],
			            "menu":"旅游快讯类型管理",
			            "menuJump":"列表",
			            "tableName":"dictionaryNews"
			        }

			    ],
			    "menu":"基础数据管理"
			}
			,{
			    "child":[
			        {
			            "buttons":[
			                "查看",
			                "新增",
			                "修改",
			                "删除"
			            ],
			            "menu":"轮播图管理",
			            "menuJump":"列表",
			            "tableName":"config"
			        }
			    ],
			    "menu":"轮播图管理"
			}
,{
"child":[
{
"buttons":[
"查看",
"新增",
"修改",
"删除"
],
"menu":"单页数据管理",
"menuJump":"列表",
"tableName":"singleSeach"
}
],
"menu":"单页数据管理"
}
            ,{
                "child":[
                    {
                        "buttons":[
                            "查看",
                            "新增",
                            "修改",
                            "删除"
                        ],
                        "menu":"旅游快讯管理",
                        "menuJump":"列表",
                        "tableName":"news"
                    }
                ],
                "menu":"旅游快讯管理"
            }
        ],
        "frontMenu":[

        ],
        "roleName":"管理员",
        "tableName":"users"
    }
	,
	{
	        "backMenu":[
	            {
	                "child":[
	                    {
	                        "buttons":[
	                            "查看"
	                        ],
	                        "menu":"景点管理",
	                        "menuJump":"列表",
	                        "tableName":"jingdian"
	                    }
	                    ,
	                    {
	                        "buttons":[
	                            "查看",
	                            "删除"
	                        ],
	                        "menu":"景点留言管理",
	                        "menuJump":"列表",
	                        "tableName":"jingdianLiuyan"
	                    }
	                    ,
	                    {
	                        "buttons":[
	                            "查看",
	                            "删除"
	                        ],
	                        "menu":"景点收藏管理",
	                        "menuJump":"列表",
	                        "tableName":"jingdianCollection"
	                    }
	                ],
	                "menu":"景点管理"
	            }
	            ,{
	                "child":[
	                    {
	                        "buttons":[
	                            "查看"
	                        ],
	                        "menu":"路线管理",
	                        "menuJump":"列表",
	                        "tableName":"luxian"
	                    }
	                    ,
	                    {
	                        "buttons":[
	                            "查看",
	                            "删除"
	                        ],
	                        "menu":"路线收藏管理",
	                        "menuJump":"列表",
	                        "tableName":"luxianCollection"
	                    }
	                ],
	                "menu":"路线管理"
	            }
	            ,{
	                "child":[
	                    {
	                        "buttons":[
	                            "查看"
	                        ],
	                        "menu":"旅游快讯管理",
	                        "menuJump":"列表",
	                        "tableName":"news"
	                    }
	                ],
	                "menu":"旅游快讯管理"
	            }
	        ],
	        "frontMenu":[
	
	        ],
	        "roleName":"用户",
	        "tableName":"yonghu"
	    }
];

var hasMessage = '';
