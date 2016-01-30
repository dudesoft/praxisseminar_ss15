<header>
    <div id="logo">
        <a href="index.php">
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
            <p>Ort:</p>
            <input type="text" name="location" id="location_input">
            
            <p>Interpret:</p>
            <input type="text" name="interpret" id="interpret_input">
            
            <p>Musikinstrument:</p>
            <input type="text" name="instrument" id="instrument_input">
            
            <p>Datum:</p>
            min:
            <input type="date" name="min_date" min="1960-1-1" id="min_date_input">
           
            <br> max:
            <input type="date" name="max_date" max="2010-1-1" id="max_date_input">
            <br>
            
            <button type="button" id="extended_search">Suchen</button>
        </form>
    </div>
</header>
