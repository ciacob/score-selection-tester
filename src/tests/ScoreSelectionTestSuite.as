package tests {
import eu.claudius.iacob.testing.abstracts.AbstractTestSuite;

public class ScoreSelectionTestSuite extends AbstractTestSuite{
    private const NAME : String = 'Selection Test Suite';
    private const DESCRIPTION : String = 'Groups together tests related to score selection.';

    public function ScoreSelectionTestSuite() {
        super (this, NAME, DESCRIPTION);
    }
}
}
