<!DOCTYPE html>

<html>

    <head>
        <title>Collapsible Content Demo</title>
        <link rel="stylesheet" href="http://code.jquery.com/mobile/1.0a1/jquery.mobile-1.0a1.min.css" />
        <script src="http://code.jquery.com/jquery-1.4.3.min.js"></script>
        <script src="http://code.jquery.com/mobile/1.0a1/jquery.mobile-1.0a1.min.js"></script>
    </head>
    <body>
        <div data-role="page" id="home">
            <div data-role="header">
                <h1>Home</h1>
            </div>
            <div data-role="content">
                <div data-role="collapsible" data-state="collapsed">
                    <h3>About this app</h3>
                    <p>This app rocks!</p>
                </div>
            </div>
        </div>
    </body>

</html>