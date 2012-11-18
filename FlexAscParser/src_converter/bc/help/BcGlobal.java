package bc.help;

import java.util.List;
import java.util.Map;

import macromedia.asc.parser.DefinitionNode;
import bc.lang.BcClassDefinitionNode;
import bc.lang.BcClassList;
import bc.lang.BcFunctionDeclaration;
import bc.lang.BcImportList;
import bc.lang.BcMetadata;
import bc.lang.BcVariableDeclaration;

public class BcGlobal
{
	public static String lastBcPath;
	public static String lastBcPackageName;
	
	public static BcClassDefinitionNode lastBcClass;
	public static BcFunctionDeclaration lastBcFunction;
	public static BcImportList lastBcImportList;
	
	public static List<BcVariableDeclaration> declaredVars;
	
	public static BcClassList bcPlatformClasses;
	public static BcClassList bcApiClasses;
	public static BcClassList bcClasses;
	public static List<BcFunctionDeclaration> bcGlobalFunctions;
	
	public static Map<DefinitionNode, BcMetadata> bcMetadataMap;
}
