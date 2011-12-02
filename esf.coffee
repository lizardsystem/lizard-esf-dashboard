$ = jQuery

$.fn.esfPlugin = (options) ->
    defaults = {}
    opts = $.extend defaults, options # These are the provided arguments (json)
    div = $(this) # This is the div to which the plugin is initialized
    
    createTable = ->
        # Create table element with tbody and an initial tr
        table = $('<table>').attr(
            'border', 0
        ).attr(
            'cellspacing', 0
        ).attr(
            'cellpadding', 10
        ).attr(
            'id', 'esfTable'
        ).append(
            $('<tbody>')
        ).append(
            $('<tr>')
        )
        
        # Set counter to 1 and loop through options
        i = 1
        for key, esfItem of opts
            # Append a new td to the last tr
            table.find('tbody tr:last').append(
                $('<td/>').attr(
                    'class', esfItem.value
                ).html(
                    # And fill the td with html
                    $('<a/>').attr(
                        'rel', 'tipsy'
                    ).attr(
                        'title', esfItem.meta.door + ' (' + esfItem.meta.wanneer + ') ' + esfItem.meta.opmerking
                    ).html(
                        $('<img/>').attr(
                            'src', 'images/' + i + '.png'
                        )
                    ).after(
                        '<br/>'
                    )
                ).append(
                    $('<img/>').attr(
                        'src', 'images/' + esfItem.stars + 'star.png'
                    )
                )
            )
            if i % 3 is 0 and i < 9
                # Every third loop, append a closing and opening tr
                table.find('tbody tr:last').parent().append(
                    $('</tr><tr>')
                )
            i++
        # Append the table to the div to which the plugin is initialized
        div.append table

    # Bootstrap the plugin
    createTable()

$(document).ready ->
    $('#esf').esfPlugin
        'esf1':
            'value': 'critical'
            'stars': 2
            'meta':
                'door': 'Bastiaan Roos',
                'wanneer': 'Nov 29',
                'opmerking': 'Lorem ipsum dolor sit amet, labore et dolore magna aliqua.'                
        'esf2':
            'value': 'critical'
            'stars': 1
            'meta':
                'door': 'Gijs Nijholt',
                'wanneer': 'Nov 29',
                'opmerking': 'Lorem ipsum dolor sit amet, labore et dolore magna aliqua.'
        'esf3':
            'value': 'novalue'
            'stars': 1
            'meta':
                'door': 'Alexandr Seleznev'
                'wanneer': 'Nov 29'
                'opmerking': 'Lorem ipsum dolor sit amet, labore et dolore magna aliqua.'
        'esf4':
            'value': 'novalue'
            'stars': 3
            'meta':
                'door': 'Carsten Byrman'
                'wanneer': 'Nov 29'
                'opmerking': 'Lorem ipsum dolor sit amet, labore et dolore magna aliqua.'
        'esf5':
            'value': 'critical'
            'stars': 2
            'meta':
                'door': 'Arjan Verkerk'
                'wanneer': 'Nov 29'
                'opmerking': 'Lorem ipsum dolor sit amet, labore et dolore magna aliqua.'
        'esf6':
            'value': 'critical'
            'stars': 2
            'meta':
                'door': 'Jack Ha'
                'wanneer': 'Nov 29'
                'opmerking': 'Lorem ipsum dolor sit amet, labore et dolore magna aliqua.'
        'esf7':
            'value': 'critical'
            'stars': 1
            'meta':
                'door': 'Reinout van Rees'
                'wanneer': 'Nov 29'
                'opmerking': 'Lorem ipsum dolor sit amet, labore et dolore magna aliqua.'
        'esf8':
            'value': 'critical'
            'stars': 2
            'meta':
                'door': 'Pieter Swinkels'
                'wanneer': 'Nov 29'
                'opmerking': 'Lorem ipsum dolor sit amet, labore et dolore magna aliqua.'
        'esf9':
            'value': 'critical'
            'stars': 3
            'meta':
                'door': 'John Doe'
                'wanneer': 'Nov 29'
                'opmerking': 'Lorem ipsum dolor sit amet, labore et dolore magna aliqua.'
        
        
    $('a[rel=tipsy]').tipsy
        fade: true
        gravity: 'n'