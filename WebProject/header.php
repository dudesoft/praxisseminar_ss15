<header class="navigation_element">
    <img src="img/logo_placeholder.png" id="header_icon">
    <form id="search_bar">
        <input type="search" name="search">
    </form>
    <button type="button" id="pop_over">Erweiterte Suche</button>
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
        </form>
    </div>
</header>
