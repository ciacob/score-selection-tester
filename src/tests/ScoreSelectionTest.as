package tests {
import eu.claudius.iacob.testing.abstracts.AbstractTest;
import eu.claudius.iacob.testing.interfaces.ITest;

public class ScoreSelectionTest extends AbstractTest implements ITest {
    private static const NAME : String = 'Score Selection';
    private static const DESCRIPTION : String = 'Tests ability of the score selection library to handle both single and multiple selection';
    public function ScoreSelectionTest() {
        super (this, NAME, DESCRIPTION);
    }
}
}
