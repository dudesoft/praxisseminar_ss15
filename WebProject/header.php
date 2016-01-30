<header>
    <div id="logo">
        <a href="index.php" width="500px">
            <img src="img/logo.svg" id="header_icon">
            <p id="name-logo">Hoerburger Reisen</p>
        </a>
    </div>
    
    <div id="search_bar" class="input-group">
      <input id="search-input" class="form-control" type="search" name="search" placeholder="Suche...">
      <span class="input-group-btn">
        <button id="search-button" class="btn btn-default" type="button"> 
            <i class="glyphicon glyphicon-search"></i>
        </button>
      </span>
    </div>
    
    <button type="button" id="pop_over" class="btn btn-primary btn-xs">Erweiterte Suche <span class="glyphicon glyphicon-menu-down"></span> </button>

    <div id="pop_over_content">
        <form>

            <div class="form-group">
                <p> <strong>Ort:</strong></p>
                <input type="text" class="form-control" name="location" id="location_input">
            </div>

            <div class="form-group">
                <p><strong>Interpret:</strong></p>
                <input type="text" class="form-control" name="interpret" id="interpret_input">
            </div>

            <div class="form-group">
                <p><strong>Musikinstrument:</strong></p>
                <input type="text" class="form-control" name="instrument" id="instrument_input">
            </div>

            <div >
                <p><strong>Datum:</strong></p>
                <div class="form-group">
                    <p class="control-label col-sm-2" for="min_date">min:</p>
                    <div class="col-sm-10">
                        <input type="date" class="form-control" id="min_date_input" >
                    </div>
                </div>

                <div class="form-group">
                    <p class="control-label col-sm-2" for="max_date">max:</p>
                    <div class="col-sm-10">
                        <input type="date" class="form-control" id="max_date_input" >
                    </div>
                </div>
            </div>
            
            <button id="enter_search" type="button"> 
                <i class="glyphicon glyphicon-ok"></i>
            </button>

        </form>
    </div>
</header>
