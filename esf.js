(function() {
  var $;
  $ = jQuery;
  $.fn.esfPlugin = function(options) {
    var createTable, defaults, div, opts;
    defaults = {};
    opts = $.extend(defaults, options);
    div = $(this);
    createTable = function() {
      var esfItem, i, key, table;
      table = $('<table>').attr('border', 0).attr('cellspacing', 0).attr('cellpadding', 10).attr('id', 'esfTable').append($('<tbody>')).append($('<tr>'));
      i = 1;
      for (key in opts) {
        esfItem = opts[key];
        table.find('tbody tr:last').append($('<td/>').attr('class', esfItem.value).html($('<a/>').attr('rel', 'tipsy').attr('title', esfItem.meta.door + ' (' + esfItem.meta.wanneer + ') ' + esfItem.meta.opmerking).html($('<img/>').attr('src', 'images/' + i + '.png')).after('<br/>')).append($('<img/>').attr('src', 'images/' + esfItem.stars + 'star.png')));
        if (i % 3 === 0 && i < 9) {
          table.find('tbody tr:last').parent().append($('</tr><tr>'));
        }
        i++;
      }
      return div.append(table);
    };
    return createTable();
  };
  $(document).ready(function() {
    $('#esf').esfPlugin({
      'esf1': {
        'value': 'critical',
        'stars': 2,
        'meta': {
          'door': 'Bastiaan Roos',
          'wanneer': 'Nov 29',
          'opmerking': 'Lorem ipsum dolor sit amet, labore et dolore magna aliqua.'
        }
      },
      'esf2': {
        'value': 'critical',
        'stars': 1,
        'meta': {
          'door': 'Gijs Nijholt',
          'wanneer': 'Nov 29',
          'opmerking': 'Lorem ipsum dolor sit amet, labore et dolore magna aliqua.'
        }
      },
      'esf3': {
        'value': 'novalue',
        'stars': 1,
        'meta': {
          'door': 'Alexandr Seleznev',
          'wanneer': 'Nov 29',
          'opmerking': 'Lorem ipsum dolor sit amet, labore et dolore magna aliqua.'
        }
      },
      'esf4': {
        'value': 'novalue',
        'stars': 3,
        'meta': {
          'door': 'Carsten Byrman',
          'wanneer': 'Nov 29',
          'opmerking': 'Lorem ipsum dolor sit amet, labore et dolore magna aliqua.'
        }
      },
      'esf5': {
        'value': 'critical',
        'stars': 2,
        'meta': {
          'door': 'Arjan Verkerk',
          'wanneer': 'Nov 29',
          'opmerking': 'Lorem ipsum dolor sit amet, labore et dolore magna aliqua.'
        }
      },
      'esf6': {
        'value': 'critical',
        'stars': 2,
        'meta': {
          'door': 'Jack Ha',
          'wanneer': 'Nov 29',
          'opmerking': 'Lorem ipsum dolor sit amet, labore et dolore magna aliqua.'
        }
      },
      'esf7': {
        'value': 'critical',
        'stars': 1,
        'meta': {
          'door': 'Reinout van Rees',
          'wanneer': 'Nov 29',
          'opmerking': 'Lorem ipsum dolor sit amet, labore et dolore magna aliqua.'
        }
      },
      'esf8': {
        'value': 'critical',
        'stars': 2,
        'meta': {
          'door': 'Pieter Swinkels',
          'wanneer': 'Nov 29',
          'opmerking': 'Lorem ipsum dolor sit amet, labore et dolore magna aliqua.'
        }
      },
      'esf9': {
        'value': 'critical',
        'stars': 3,
        'meta': {
          'door': 'John Doe',
          'wanneer': 'Nov 29',
          'opmerking': 'Lorem ipsum dolor sit amet, labore et dolore magna aliqua.'
        }
      }
    });
    return $('a[rel=tipsy]').tipsy({
      fade: true,
      gravity: 'n'
    });
  });
}).call(this);
