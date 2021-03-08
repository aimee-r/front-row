function dhm(t){
    var cd = 24 * 60 * 60 * 1000,
        ch = 60 * 60 * 1000,
        cm = 60 * 1000,
        d = Math.floor(t / cd),
        h = Math.floor( (t - d * cd) / ch),
        m = Math.round( (t - d * cd - h * ch) / 60000),
        s = Math.round( ((t - d * cd - h * ch - m * cm) / 1000) + 30),
        pad = function(n){ return n < 10 ? '0' + n : n; };
  if( s === 60 ){
    m++;
    s = 0;
  }
  if( m === 60 ){
    h++;
    m = 0;
  }
  if( h === 24 ){
    d++;
    h = 0;
  }
  return [d, pad(h), pad(m), pad(s)].join(':');
}

export const countdownTimer = () => {
  const timer = document.getElementById("event-start-time");
  const d = new Date(timer.value);
  const time = d - Date.now()
  let countDown = document.getElementById("counter");
  countDown.innerHTML = dhm(time)
  let interval = setInterval(function(){
    countDown = document.getElementById("counter");
    if (countDown) {
      const time = d - Date.now()
    countDown.innerHTML = dhm(time)
    } else {
     stopInterval()
    }
  }, 1000);
  const stopInterval = () => {
    clearInterval(interval)
    interval = 0;
  }
}
