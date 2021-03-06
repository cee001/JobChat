<!DOCTYPE html>

<html>

    <head>

        <title>jQuery Mobile Lists Demo</title>
        <link rel="stylesheet"
            href="http://code.jquery.com/mobile/1.0a1/jquery.mobile-1.0a1.min.css" />
        <script src="http://code.jquery.com/jquery-1.4.3.min.js"></script>
        <script
            src="http://code.jquery.com/mobile/1.0a1/jquery.mobile-1.0a1.min.js"></script>
    </head>
    <body>

        <div data-role="page" id="home">
            <div data-role="header">
                <h1>
                    Lists Demo
                </h1>
            </div>
            <div data-role="content">
                <h2 style="padding: 1em 0;">
                    A list view
                </h2>
                <ul data-role="listview" data-inset="true">
                    <li>
                        Cat
                    </li>
                    <li>
                        Dog
                    </li>
                    <li>
                        Mouse
                    </li>
                    <li>
                        Squirrel
                    </li>
                </ul>
                <h2 style="padding: 1em 0;">
                    A list of links
                </h2>
                <ul data-role="listview" data-inset="true">
                    <li>
                        <a href="#">About this app</a>
                    </li>
                    <li>
                        <a href="#">Buy ice cream</a>
                    </li>
                    <li>
                        <a href="#">Find a store</a>
                    </li>
                </ul>
                <h2 style="padding: 1em 0;">
                    Nestedd lists
                </h2>
                <ul data-role="listview" data-inset="true">
                    <li>
                        Play
                        <ul>
                            <li>
                                <a href="#">Easy</a>
                            </li>
                            <li>
                                <a href="#">Medium</a>
                            </li>
                            <li>
                                <a href="#">Hard</a>
                            </li>
                        </ul>
                    </li>
                    <li>
                        Settings
                        <ul>
                            <li>
                                <a href="#">Graphics</a>
                            </li>
                            <li>
                                <a href="#">Sound</a>
                            </li>
                            <li>
                                <a href="#">Device</a>
                            </li>
                        </ul>
                    </li>
                    <li>
                        Highscores
                        <ul>
                            <li>
                                <a href="#">View</a>
                            </li>
                            <li>
                                <a href="#">Submit</a>
                            </li>
                            <li>
                                <a href="#">Reset</a>
                            </li>
                        </ul>
                    </li>
                </ul>
                <h2 style="padding: 1em 0;">
                    A split button list with filter
                </h2>
                <ul data-role="listview" data-inset="true" data-filter="true">
                    <li>
                        <a href="#">The Grapes of Wrath</a>
                        <a href="#">Buy This Book</a>
                    </li>
                    <li>
                        <a href="#">The Trial</a>
                        <a href="#">Buy This Book</a>
                    </li>
                    <li>
                        <a href="#">A Tale of Two Cities</a>
                        <a href="#">Buy This Book</a>
                    </li>
                </ul>
                <h2 style="padding: 1em 0;">
                    A list with count bubbles
                </h2>
                <ul data-role="listview" data-inset="true">
                    <li>
                        <a href="#">SuperWidgets</a>
                        <span class="ui-li-count">14</span>
                    </li>
                    <li>
                        <a href="#">MegaWidgets</a>
                        <span class="ui-li-count">0</span>
                    </li>
                    <li>
                        <a href="#">WonderWidgets</a>
                        <span class="ui-li-count">327</span>
                    </li>
                </ul>
            </div>
        </div>
    </body>

</html>