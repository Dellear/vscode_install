var sleep = async function (time) {
    return new Promise(function (resolve, reject) {
        setTimeout(function () {
            resolve(time);
        }, time);
    })
};

var start = async function () {
    // 在这里使用起来就像同步代码那样直观
    console.log('start');
    const time = await sleep(3000);
    console.log(time);
    console.log('end');
};

start();