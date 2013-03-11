$("#e7").select2({
    placeholder: "Search for a donor",
    minimumInputLength: 3,
    ajax: {
        url: "-u api@mainstmission.org:AnneCorriher https://main_street_mission.donortools.com/people.json",
        dataType: 'jsonp',
        quietMillis: 100,
        data: function (term, page) { // page is the one-based page number tracked by Select2
            return {
                q: term, //search term
                page_limit: 10, // page size
                page: page, // page number
//                apikey: "ju6z9mjyajq2djue3gbvv26t" // please do not use so this example keeps working
            };
        },
        results: function (data, page) {
            var more = (page * 10) < data.total; // whether or not there are more results available

            // notice we return the value of more so Select2 knows if more results can be loaded
            return {results: data.movies, more: more};
        }
    },
//    formatResult: movieFormatResult, // omitted for brevity, see the source of this page
//    formatSelection: movieFormatSelection, // omitted for brevity, see the source of this page
    dropdownCssClass: "bigdrop", // apply css that makes the dropdown taller
    escapeMarkup: function (m) { return m; } // we do not want to escape markup since we are displaying html in results
});