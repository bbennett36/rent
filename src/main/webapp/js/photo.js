/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


$(document).ready(function () {
    //add more file components if Add is clicked
    $('#addFile')
            .click(
                    function () {
                        var fileIndex = $('#fileTable tr')
                                .children().length;
                        $('#fileTable')
                                .append(
                                        '<tr><td>'
                                        + '   <input type="file" name="files[' + fileIndex + ']" />'
                                        + '</td></tr>');
                    });

});