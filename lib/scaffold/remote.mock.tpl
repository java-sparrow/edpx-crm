/**
 * @file 反向代理(${url|raw})
 * @author ${author|raw}(${email|raw})
 */

module.exports = {
    type: '${data.type|raw}',

    // 反向代理的请求地址
    // 默认为空，与源请求相同
    path: '',

    // 反向代理host与端口
    // 默认为空，指向乐高平台
    host: '',
    prot: ''
};
