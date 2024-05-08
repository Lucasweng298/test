const base = {
    get() {
        return {
            url : "http://localhost:8080/springboot4447x/",
            name: "springboot4447x",
            // 退出到首页链接
            indexUrl: 'http://localhost:8080/springboot4447x/front/index.html'
        };
    },
    getProjectName(){
        return {
            projectName: "基于JAVA的高校招聘系统"
        } 
    }
}
export default base
