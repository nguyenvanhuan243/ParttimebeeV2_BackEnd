var editor = new MediumEditor('.editable', {
    toolbar: {
    /* These are the default options for the toolbar,
                                               if nothing is passed this is what is used */
    allowMultiParagraphSelection: true,
    buttons: ['bold', 'italic', 'underline', 'anchor', 'h2', 'h3','unorderedlist'],
    diffLeft: 0,
    diffTop: -10,
    firstButtonClass: 'medium-editor-button-first',
    lastButtonClass: 'medium-editor-button-last',
    relativeContainer: null,
    standardizeSelectionStart: false,
    static: false,
    /* options which only apply when static is true */
    align: 'center',
    sticky: false,
    updateOnEmptySelection: false
}});