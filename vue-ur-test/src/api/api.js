import axios from 'axios'




let getCookie = function(name,token){
    var value = ";" + token
    var parts = value.split(';' + name + '=')
    if(parts.length ===2){
        return parts.pop().split(';').shift()
    }
}


axios.interceptors.request.uer(
    config=>{
        let token = document.cookie;
        if(token && config.method == 'post'){
            config.headers['X-CSRFToken'] = getCookie('csrftoken',token);
        }
        return config
    },
    error=>{
        return Promise.reject(error)
    }
)


export default axios