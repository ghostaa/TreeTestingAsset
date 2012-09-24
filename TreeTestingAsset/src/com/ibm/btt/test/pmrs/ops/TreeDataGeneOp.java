package com.ibm.btt.test.pmrs.ops;

import com.ibm.btt.base.BTTServerOperation;
import com.ibm.btt.dojo.model.TreeModel;

public class TreeDataGeneOp extends BTTServerOperation {
	public void execute() throws Exception {
		try {
			TreeModel root = (TreeModel) getElementAt("root");
			root.setLabel("ROOT");
			generateTreeModel(root);
			fireExitEvent("OK");
		} catch (Exception e) {
			e.printStackTrace();
			fireExitEvent("ERROR");
		} 
	}

	private void generateTreeModel(TreeModel root) throws Exception {
		// generate level 1 elements
		String nlsKey = "NLS";
		String nonNlsLblDesc = "NONE-NLS ";
		int lvl1 = 4;
		for (int i = 0; i < lvl1; i++) {
			String lblLvl1 = "LABEL1-" + i;
			String lblLvl1Nls = null;
			if (i % 2 != 0)
				lblLvl1Nls = nlsKey + lblLvl1;
			else
				lblLvl1Nls = nonNlsLblDesc + lblLvl1;

			TreeModel tmLvl1 = generateTreeModel("LVL1-" + i, "VALUE1-" + i,
					lblLvl1Nls);
			// generate level 2 elements
			int lvl2 = 2;
			for (int j = 0; j < lvl2; j++) {
				String lblLvl2 = "LABEL2-" + j;
				String lblLvl2Nls = null;
				if (j % 2 == 0)
					lblLvl2Nls = nlsKey + lblLvl1 + "_" + lblLvl2;
				else
					lblLvl2Nls = nonNlsLblDesc + lblLvl2;
				TreeModel tmLvl2 = generateTreeModel("LVL2-" + j,
						"VALUE2-" + j, lblLvl2Nls);
				// generate level 3 elements
				int lvl3 = 2;
				for (int k = 0; k < lvl3; k++) {
					String lblLvl3 = "LABEL3-" + k;
					String lblLvl3Nls = null;
					if (k % 2 != 0)
						lblLvl3Nls = nlsKey + lblLvl1 + "_" + lblLvl2 + "_"
								+ lblLvl3;
					else
						lblLvl3Nls = nonNlsLblDesc + lblLvl3;
					TreeModel tmLvl3 = generateTreeModel("LVL3-" + k, "VALUE3-"
							+ k, lblLvl3Nls);
					tmLvl2.addChild(tmLvl3);
				}
				tmLvl1.addChild(tmLvl2);
			}
			root.addChild(tmLvl1);
		}
	}

	private TreeModel generateTreeModel(String id, String value, String label) {
		return new TreeModel(id, value, label);
	}
}
