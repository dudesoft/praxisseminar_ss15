<header>
    <div id="logo">
        <img src="img/logo.svg" id="header_icon">
        <p id="name-logo">Hoerburger Reisen</p>
    </div>
    <form id="search_bar">
        <input id="search-input" type="search" name="search" placeholder="Suche..." width="200px">
    </form>
    <button type="button" id="pop_over">Erweiterte Suche <i class="icon-sort-down"></i> </button>
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
