package mac_ip;

import java.net.InetAddress;
import java.net.NetworkInterface;
import java.net.SocketException;
import java.net.UnknownHostException;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.Map;

public class test {
	
	public static void main(String[] args) {
		
		String firstInterface = null;
		Map<String, String> addressByNetwork = new HashMap<>();
		Enumeration<NetworkInterface> networkInterfaces;
		try
		{
			networkInterfaces = NetworkInterface.getNetworkInterfaces();
			while(networkInterfaces.hasMoreElements())
			{
		NetworkInterface network = networkInterfaces.nextElement();
		 
		byte[] bmac = network.getHardwareAddress();
		if(bmac != null)
		{
			StringBuilder sb = new StringBuilder();
			for (int i = 0; i < bmac.length; i++)
			{
				sb.append(String.format("%02X%s", bmac[i], (i < bmac.length - 1) ? ":" : ""));
			}
		 
			if(sb.toString().isEmpty()==false)
			{
				addressByNetwork.put(network.getName(), sb.toString());
			}
		 
			if(sb.toString().isEmpty()==false && firstInterface == null)
			{
				firstInterface = network.getName();
			}
		}
			}
		} catch (SocketException e)
		{
			e.printStackTrace();
		}
		 
		if(firstInterface != null)//
		{
			try {
				System.out.println(addressByNetwork.get(firstInterface) + " ip : " + InetAddress.getLocalHost().getHostAddress());
			} catch (UnknownHostException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		
	}

}
