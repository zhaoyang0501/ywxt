package com.pzy.constants;
import java.util.HashMap;
import java.util.Map;
public interface ImsConstants {
		public interface WorkFlowConstants{
			final String RUNLOG = "runlog";
			@SuppressWarnings("serial")
			final static Map<String,String> WORKFLOWNAME_MAP = new HashMap<String,String>() {
				{    
				    put(RUNLOG, "运行日志");    
				}};
		}
		
}
