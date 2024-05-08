import Vue from 'vue';
//配置路由
import VueRouter from 'vue-router'
Vue.use(VueRouter);
//1.创建组件
import Index from '@/views/index'
import Home from '@/views/home'
import Login from '@/views/login'
import NotFound from '@/views/404'
import UpdatePassword from '@/views/update-password'
import pay from '@/views/pay'
import register from '@/views/register'
import center from '@/views/center'
    import news from '@/views/modules/news/list'
    import xuesheng from '@/views/modules/xuesheng/list'
    import storeup from '@/views/modules/storeup/list'
    import yingpinxinxi from '@/views/modules/yingpinxinxi/list'
    import jiuyezhishi from '@/views/modules/jiuyezhishi/list'
    import qiye from '@/views/modules/qiye/list'
    import zhaopinxinxi from '@/views/modules/zhaopinxinxi/list'
    import xianxiaxuanjianghui from '@/views/modules/xianxiaxuanjianghui/list'
    import chat from '@/views/modules/chat/list'
    import fudaoyuan from '@/views/modules/fudaoyuan/list'
    import biyequxiang from '@/views/modules/biyequxiang/list'
    import config from '@/views/modules/config/list'
    import discussjiuyezhishi from '@/views/modules/discussjiuyezhishi/list'


//2.配置路由   注意：名字
const routes = [{
    path: '/index',
    name: '首页',
    component: Index,
    children: [{
      // 这里不设置值，是把main作为默认页面
      path: '/',
      name: '首页',
      component: Home,
      meta: {icon:'', title:'center'}
    }, {
      path: '/updatePassword',
      name: '修改密码',
      component: UpdatePassword,
      meta: {icon:'', title:'updatePassword'}
    }, {
      path: '/pay',
      name: '支付',
      component: pay,
      meta: {icon:'', title:'pay'}
    }, {
      path: '/center',
      name: '个人信息',
      component: center,
      meta: {icon:'', title:'center'}
    }
      ,{
	path: '/news',
        name: '公告信息',
        component: news
      }
      ,{
	path: '/xuesheng',
        name: '学生',
        component: xuesheng
      }
      ,{
	path: '/storeup',
        name: '我的收藏管理',
        component: storeup
      }
      ,{
	path: '/yingpinxinxi',
        name: '应聘信息',
        component: yingpinxinxi
      }
      ,{
	path: '/jiuyezhishi',
        name: '就业知识',
        component: jiuyezhishi
      }
      ,{
	path: '/qiye',
        name: '企业',
        component: qiye
      }
      ,{
	path: '/zhaopinxinxi',
        name: '招聘信息',
        component: zhaopinxinxi
      }
      ,{
	path: '/xianxiaxuanjianghui',
        name: '线下宣讲会',
        component: xianxiaxuanjianghui
      }
      ,{
	path: '/chat',
        name: '职业咨询',
        component: chat
      }
      ,{
	path: '/fudaoyuan',
        name: '辅导员',
        component: fudaoyuan
      }
      ,{
	path: '/biyequxiang',
        name: '毕业去向',
        component: biyequxiang
      }
      ,{
	path: '/config',
        name: '轮播图管理',
        component: config
      }
      ,{
	path: '/discussjiuyezhishi',
        name: '就业知识评论',
        component: discussjiuyezhishi
      }
    ]
  },
  {
    path: '/login',
    name: 'login',
    component: Login,
    meta: {icon:'', title:'login'}
  },
  {
    path: '/register',
    name: 'register',
    component: register,
    meta: {icon:'', title:'register'}
  },
  {
    path: '/',
    name: '首页',
    redirect: '/index'
  }, /*默认跳转路由*/
  {
    path: '*',
    component: NotFound
  }
]
//3.实例化VueRouter  注意：名字
const router = new VueRouter({
  mode: 'hash',
  /*hash模式改为history*/
  routes // （缩写）相当于 routes: routes
})

export default router;
