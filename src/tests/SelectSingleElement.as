package tests {
import ro.ciacob.desktop.data.DataElement;
import ro.ciacob.maidens.editor.selection.ScoreSelectionManager;
import ro.ciacob.maidens.legacy.constants.DataFields;

import tests.common.ScoreSelectionCase;

public class SelectSingleElement extends ScoreSelectionCase {

    private var testElement:DataElement;

    public function SelectSingleElement() {
        super(
                'Select single element',
                'Starting out with no selection, selects one element and verifies that it is selected'
        );
        testElement = new DataElement;
        testElement.setContent(DataFields.DATA_TYPE, DataFields.PROJECT);
        testElement.setContent(DataFields.PROJECT_NAME, 'Empty test project');
    }

    override public function get expectedResult () : String {
        return 'true';
    }

    override public function get details():Object {
        return testElement.getContentMap();
    }

    override public function doTesting(reportBack:Function):void {
        var lib:ScoreSelectionManager = new ScoreSelectionManager;
        lib.selectionAnchor = testElement;

        reportBack(lib.selectionAnchor === testElement);
    }
}
}
