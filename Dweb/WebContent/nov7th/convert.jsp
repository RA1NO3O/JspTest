<%!
	public String Bytes(String str){
		try{
				String strOld=str;
				byte[] strNew=strOld.getBytes("ISO8859-1");
				String bytes = new String(strNew,"utf-8");
				return bytes;
		}catch(Exception e){}
		return null;	 
	}
%>