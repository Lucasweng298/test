const menu = {
    list() {
        return [
            {
                "backMenu": [
                    {
                        "child": [
                            {
                                "buttons": ["查看", "修改", "删除", "审核"],
                                "menu": "学生",
                                "menuJump": "列表",
                                "tableName": "xuesheng"
                            }
                        ],
                        "menu": "学生管理"
                    },
                    {
                        "child": [
                            {
                                "buttons": ["新增", "查看", "修改", "删除"],
                                "menu": "辅导员",
                                "menuJump": "列表",
                                "tableName": "fudaoyuan"
                            }
                        ],
                        "menu": "辅导员管理"
                    },
                    // ... （其他backMenu的内容）
                ],
                "frontMenu": [
                    {
                        "child": [
                            {
                                "buttons": ["查看"],
                                "menu": "企业列表",
                                "menuJump": "列表",
                                "tableName": "qiye"
                            }
                        ],
                        "menu": "企业模块"
                    },
                    // ... （其他frontMenu的内容）
                ],
                "hasBackLogin": "是",
                "hasBackRegister": "否",
                "hasFrontLogin": "否",
                "hasFrontRegister": "否",
                "roleName": "管理员",
                "tableName": "users"
            },
            // ... （其他list项的内容）
        ];
    }
};

export default menu;
