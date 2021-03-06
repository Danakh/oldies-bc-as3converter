package bc.lang;

import macromedia.asc.parser.Node;
import bc.code.ListWriteDestination;

public class BcVariableDeclaration extends BcDeclaration
{
	private BcTypeNodeInstance typeInstance;
	private String identifier;
	private ListWriteDestination initializer;
	private boolean integralInitializerFlag;
	
	private Node initializerNode;
	
	public BcVariableDeclaration(BcTypeNodeInstance typeInstance, String identifier)
	{
		this.identifier = identifier;
		this.typeInstance = typeInstance;
	}
	
	public boolean isQualified()
	{
		return typeInstance.isQualified();
	}
	
	public void setInitializerNode(Node initializerNode)
	{
		this.initializerNode = initializerNode;
	}
	
	public Node getInitializerNode()
	{
		return initializerNode;
	}
	
	public BcTypeNode getType()
	{
		return typeInstance.getType();
	}
	
	public BcTypeNodeInstance getTypeInstance()
	{
		return typeInstance;
	}
	
	public void setTypeInstance(BcTypeNodeInstance typeInstance) 
	{
		this.typeInstance = typeInstance;
	}
	
	public String getIdentifier()
	{
		return identifier;
	}
	
	public void setInitializer(ListWriteDestination initializer)
	{
		this.initializer = initializer;
	}

	public boolean isIntegralInitializerFlag()
	{
		return integralInitializerFlag;
	}

	public void setIntegralInitializerFlag(boolean integralInitializerFlag)
	{
		this.integralInitializerFlag = integralInitializerFlag;
	}

	public boolean hasInitializer()
	{
		return initializer != null;
	}
	
	public ListWriteDestination getInitializer()
	{
		return initializer;
	}
	
	@Override
	public String toString()
	{
		StringBuilder result = new StringBuilder();
		result.append(typeInstance.getQualifiedName());
		result.append(" ");
		result.append(getIdentifier());
		
		if (hasInitializer())
		{
			result.append(" = ");
			result.append(getInitializer());
		}
		
		return result.toString();
	}
}
