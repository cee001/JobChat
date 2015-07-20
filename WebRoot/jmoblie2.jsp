<!DOCTYPE html>

<html>

    <head>

        <title>jQuery Mobile Form Demo</title>

        <link rel="stylesheet"
            href="http://code.jquery.com/mobile/1.0a1/jquery.mobile-1.0a1.min.css" />

        <script src="http://code.jquery.com/jquery-1.4.3.min.js"></script>

        <script src="http://code.jquery.com/mobile/1.0a1/jquery.mobile-1.0a1.min.js"></script>

    </head>

    <body>
        <div data-role="page" id="home">
            <div data-role="header">
                <h1>
                    Ice Cream Order Form
                </h1>
            </div>
            <div data-role="content">
                <form action="#" method="get">
                    <div data-role="fieldcontain">
                        <label for="name">
                            Your Name:
                        </label>
                        <input type="text" name="name" id="name" value="" />
                    </div>
                    <div data-role="controlgroup">
                        <legend>
                            Which flavour(s) would you like?
                        </legend>
                        <input type="checkbox" name="vanilla" id="vanilla" class="custom" />
                        <label for="vanilla">
                            Vanilla
                        </label>
                        <input type="checkbox" name="chocolate" id="chocolate"
                            class="custom" />

                        <label for="chocolate">
                            Chocolate
                        </label>
                        <input type="checkbox" name="strawberry" id="strawberry"
                            class="custom" />
                        <label for="strawberry">
                            Strawberry
                        </label>
                    </div>
                    <div data-role="fieldcontain">
                        <label for="quantity">
                            Number of Cones:
                        </label>
                        <input type="range" name="quantity" id="quantity" value="1"
                            min="1" max="10" />
                    </div>
                    <div data-role="fieldcontain">
                        <label for="sprinkles">
                            Sprinkles:
                        </label>
                        <select name="sprinkles" id="sprinkles" data-role="slider">
                            <option value="off">
                                No
                            </option>
                            <option value="on">
                                Yes
                            </option>
                        </select>
                    </div>
                    <div data-role="fieldcontain">
                        <label for="store">
                            Collect from Store:
                        </label>
                        <select name="store" id="store">
                            <option value="mainStreet">
                                Main Street
                            </option>
                            <option value="libertyAvenue">
                                Liberty Avenue
                            </option>
                            <option value="circleSquare">
                                Circle Square
                            </option>
                            <option value="angelRoad">
                                Angel Road
                            </option>
                        </select>
                    </div>
                    <div class="ui-body ui-body-b">
                        <fieldset class="ui-grid-a">
                            <div class="ui-block-a">
                                <button type="submit" data-theme="d">
                                    Cancel
                                </button>
                            </div>
                            <div class="ui-block-b">
                                <button type="submit" data-theme="a">
                                    Order Ice Cream
                                </button>
                            </div>
                        </fieldset>
                    </div>
            </div>
        </div>
    </body>
</html>