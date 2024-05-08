
var projectName = '基于JAVA的高校招聘系统';
/**
 * 轮播图配置
 */
var swiper = {
	// 设定轮播容器宽度，支持像素和百分比
	width: '100%',
	height: '400px',
	// hover（悬停显示）
	// always（始终显示）
	// none（始终不显示）
	arrow: 'none',
	// default（左右切换）
	// updown（上下切换）
	// fade（渐隐渐显切换）
	anim: 'default',
	// 自动切换的时间间隔
	// 默认3000
	interval: 2000,
	// 指示器位置
	// inside（容器内部）
	// outside（容器外部）
	// none（不显示）
	indicator: 'outside'
}

/**
 * 个人中心菜单
 */
var centerMenu = [{
	name: '个人中心',
	url: '../' + localStorage.getItem('userTable') + '/center.html'
}, 
{
	name: '我的收藏',
	url: '../storeup/list.html'
}
]


var indexNav = [

{
	name: '企业',
	url: './pages/qiye/list.html'
}, 
{
	name: '招聘信息',
	url: './pages/zhaopinxinxi/list.html'
}, 
{
	name: '就业知识',
	url: './pages/jiuyezhishi/list.html'
}, 
{
	name: '线下宣讲会',
	url: './pages/xianxiaxuanjianghui/list.html'
}, 

{
	name: '公告信息',
	url: './pages/news/list.html'
},
]

var adminurl =  "http://localhost:8080/springboot4447x/admin/dist/index.html";

var cartFlag = false

var chatFlag = false


chatFlag = true


var menu = [{"backMenu":[{"child":[{"buttons":["查看","修改","删除","审核"],"menu":"学生","menuJump":"列表","tableName":"xuesheng"}],"menu":"学生管理"},{"child":[{"buttons":["新增","查看","修改","删除"],"menu":"辅导员","menuJump":"列表","tableName":"fudaoyuan"}],"menu":"辅导员管理"},{"child":[{"buttons":["查看","修改","删除"],"menu":"企业","menuJump":"列表","tableName":"qiye"}],"menu":"企业管理"},{"child":[{"buttons":["查看","删除","查看评论"],"menu":"招聘信息","menuJump":"列表","tableName":"zhaopinxinxi"}],"menu":"招聘信息管理"},{"child":[{"buttons":["查看","删除"],"menu":"应聘信息","menuJump":"列表","tableName":"yingpinxinxi"}],"menu":"应聘信息管理"},{"child":[{"buttons":["查看","删除"],"menu":"毕业去向","menuJump":"列表","tableName":"biyequxiang"}],"menu":"毕业去向管理"},{"child":[{"buttons":["查看","删除"],"menu":"就业知识","menuJump":"列表","tableName":"jiuyezhishi"}],"menu":"就业知识管理"},{"child":[{"buttons":["查看","删除"],"menu":"线下宣讲会","menuJump":"列表","tableName":"xianxiaxuanjianghui"}],"menu":"线下宣讲会管理"},{"child":[{"buttons":["新增","查看","修改","删除"],"menu":"公告信息","tableName":"news"},{"buttons":["新增","查看","修改","删除"],"menu":"职业咨询","tableName":"chat"},{"buttons":["新增","查看","修改","删除"],"menu":"轮播图管理","tableName":"config"}],"menu":"系统管理"}],"frontMenu":[{"child":[{"buttons":["查看"],"menu":"企业列表","menuJump":"列表","tableName":"qiye"}],"menu":"企业模块"},{"child":[{"buttons":["查看","查看评论","应聘"],"menu":"招聘信息列表","menuJump":"列表","tableName":"zhaopinxinxi"}],"menu":"招聘信息模块"},{"child":[{"buttons":["查看"],"menu":"就业知识列表","menuJump":"列表","tableName":"jiuyezhishi"}],"menu":"就业知识模块"},{"child":[{"buttons":["查看"],"menu":"线下宣讲会列表","menuJump":"列表","tableName":"xianxiaxuanjianghui"}],"menu":"线下宣讲会模块"}],"hasBackLogin":"是","hasBackRegister":"否","hasFrontLogin":"否","hasFrontRegister":"否","roleName":"管理员","tableName":"users"},{"backMenu":[{"child":[{"buttons":["查看","修改"],"menu":"学生","menuJump":"列表","tableName":"xuesheng"}],"menu":"学生管理"},{"child":[{"buttons":["查看","删除"],"menu":"应聘信息","menuJump":"列表","tableName":"yingpinxinxi"}],"menu":"应聘信息管理"},{"child":[{"buttons":["新增","查看","修改","删除"],"menu":"毕业去向","menuJump":"列表","tableName":"biyequxiang"}],"menu":"毕业去向管理"},{"child":[{"buttons":["查看","删除"],"menu":"我的收藏管理","tableName":"storeup"}],"menu":"我的收藏管理"}],"frontMenu":[{"child":[{"buttons":["查看"],"menu":"企业列表","menuJump":"列表","tableName":"qiye"}],"menu":"企业模块"},{"child":[{"buttons":["查看","查看评论","应聘"],"menu":"招聘信息列表","menuJump":"列表","tableName":"zhaopinxinxi"}],"menu":"招聘信息模块"},{"child":[{"buttons":["查看"],"menu":"就业知识列表","menuJump":"列表","tableName":"jiuyezhishi"}],"menu":"就业知识模块"},{"child":[{"buttons":["查看"],"menu":"线下宣讲会列表","menuJump":"列表","tableName":"xianxiaxuanjianghui"}],"menu":"线下宣讲会模块"}],"hasBackLogin":"是","hasBackRegister":"否","hasFrontLogin":"是","hasFrontRegister":"是","roleName":"学生","tableName":"xuesheng"},{"backMenu":[{"child":[{"buttons":["查看","审核"],"menu":"企业","menuJump":"列表","tableName":"qiye"}],"menu":"企业管理"},{"child":[{"buttons":["查看","审核"],"menu":"招聘信息","menuJump":"列表","tableName":"zhaopinxinxi"}],"menu":"招聘信息管理"},{"child":[{"buttons":["查看"],"menu":"毕业去向","menuJump":"列表","tableName":"biyequxiang"}],"menu":"毕业去向管理"},{"child":[{"buttons":["新增","查看","修改","删除"],"menu":"就业知识","menuJump":"列表","tableName":"jiuyezhishi"}],"menu":"就业知识管理"},{"child":[{"buttons":["查看","删除","审核"],"menu":"线下宣讲会","menuJump":"列表","tableName":"xianxiaxuanjianghui"}],"menu":"线下宣讲会管理"},{"child":[{"buttons":["新增","查看","修改","删除"],"menu":"职业咨询","tableName":"chat"}],"menu":"系统管理"}],"frontMenu":[{"child":[{"buttons":["查看"],"menu":"企业列表","menuJump":"列表","tableName":"qiye"}],"menu":"企业模块"},{"child":[{"buttons":["查看","查看评论","应聘"],"menu":"招聘信息列表","menuJump":"列表","tableName":"zhaopinxinxi"}],"menu":"招聘信息模块"},{"child":[{"buttons":["查看"],"menu":"就业知识列表","menuJump":"列表","tableName":"jiuyezhishi"}],"menu":"就业知识模块"},{"child":[{"buttons":["查看"],"menu":"线下宣讲会列表","menuJump":"列表","tableName":"xianxiaxuanjianghui"}],"menu":"线下宣讲会模块"}],"hasBackLogin":"是","hasBackRegister":"否","hasFrontLogin":"否","hasFrontRegister":"否","roleName":"辅导员","tableName":"fudaoyuan"},{"backMenu":[{"child":[{"buttons":["查看","修改"],"menu":"企业","menuJump":"列表","tableName":"qiye"}],"menu":"企业管理"},{"child":[{"buttons":["新增","查看","修改","删除","查看评论"],"menu":"招聘信息","menuJump":"列表","tableName":"zhaopinxinxi"}],"menu":"招聘信息管理"},{"child":[{"buttons":["查看","审核","删除"],"menu":"应聘信息","menuJump":"列表","tableName":"yingpinxinxi"}],"menu":"应聘信息管理"},{"child":[{"buttons":["新增","查看","修改","删除"],"menu":"线下宣讲会","menuJump":"列表","tableName":"xianxiaxuanjianghui"}],"menu":"线下宣讲会管理"}],"frontMenu":[{"child":[{"buttons":["查看"],"menu":"企业列表","menuJump":"列表","tableName":"qiye"}],"menu":"企业模块"},{"child":[{"buttons":["查看","查看评论","应聘"],"menu":"招聘信息列表","menuJump":"列表","tableName":"zhaopinxinxi"}],"menu":"招聘信息模块"},{"child":[{"buttons":["查看"],"menu":"就业知识列表","menuJump":"列表","tableName":"jiuyezhishi"}],"menu":"就业知识模块"},{"child":[{"buttons":["查看"],"menu":"线下宣讲会列表","menuJump":"列表","tableName":"xianxiaxuanjianghui"}],"menu":"线下宣讲会模块"}],"hasBackLogin":"是","hasBackRegister":"否","hasFrontLogin":"是","hasFrontRegister":"是","roleName":"企业","tableName":"qiye"}]


var isAuth = function (tableName,key) {
    let role = localStorage.getItem("userTable");
    let menus = menu;
    for(let i=0;i<menus.length;i++){
        if(menus[i].tableName==role){
            for(let j=0;j<menus[i].backMenu.length;j++){
                for(let k=0;k<menus[i].backMenu[j].child.length;k++){
                    if(tableName==menus[i].backMenu[j].child[k].tableName){
                        let buttons = menus[i].backMenu[j].child[k].buttons.join(',');
                        return buttons.indexOf(key) !== -1 || false
                    }
                }
            }
        }
    }
    return false;
}

var isFrontAuth = function (tableName,key) {
    let role = localStorage.getItem("userTable");
    let menus = menu;
    for(let i=0;i<menus.length;i++){
        if(menus[i].tableName==role){
            for(let j=0;j<menus[i].frontMenu.length;j++){
                for(let k=0;k<menus[i].frontMenu[j].child.length;k++){
                    if(tableName==menus[i].frontMenu[j].child[k].tableName){
                        let buttons = menus[i].frontMenu[j].child[k].buttons.join(',');
                        return buttons.indexOf(key) !== -1 || false
                    }
                }
            }
        }
    }
    return false;
}
