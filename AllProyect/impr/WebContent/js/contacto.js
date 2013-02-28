// JavaScript Document

$(function(){
        var tipo = $( "#tipo" ),
            numero = $( "#numero" ),
            allFields = $( [] ).add( tipo ).add( numero ),
            tips = $( ".validateTips" );

        function checkRegexp( o, regexp, n ) {
            if ( !( regexp.test( o.val() ) ) ) {
                o.addClass( "ui-state-error" );
                updateTips( n );
                return false;
            } else {
                return true;
            }
        }
 
        $( "#dialog-form" ).dialog({
            autoOpen: false,
            height: 300,
            width: 350,
            modal: true,
            buttons: {
                "registrar": function() {
                    var bValid = true;
                    allFields.removeClass( "ui-state-error" );
 
                    bValid = bValid && checkRegexp( numero, /[0-9\.,]+/, "solo numeros" );
                 
                  
                    if ( bValid ) {
                        $( "#users tbody" ).append( "<tr>" +
                            "<td>" + tipo.val() + "</td>" + 
                            "<td>" + numero.val() + "</td>" + 
                        "</tr>" ); 
                        $( this ).dialog( "close" );
                    }
                },
                Cancel: function() {
                    $( this ).dialog( "close" );
                }
            },
            close: function() {
                allFields.val( "" ).removeClass( "ui-state-error" );
            }
        });
 
        $( "#ver" )
        .button()
        .click(function() {
            $( "#dialog-form" ).dialog( "open" );
        });
    });