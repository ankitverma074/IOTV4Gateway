java -Dosgi.noShutdown=true ^
-Dorg.apache.activemq.UseDedicatedTaskRunner=false ^
-Dcom.sun.management.jmxremote ^
-Dcom.sun.management.jmxremote.local.only=false ^
-DGatewayVer=MQTT ^
-Dwsproto=jms ^
-DGatewayInnerBroker=true ^
-Xbootclasspath/a:config/certificates/cxf ^
-Dcxf.debug=false ^
-Dhttp.keepAlive=false ^
-Dcom.sap.iotservices.dropReadBuffer=false ^
-Dlog4j.configurationFile=config/log4j2.xml ^
-Xmx2048m ^
-Dds.lock.timeout.milliseconds=86400000 ^
-Dcom.sap.iotservices.loggerNotEncrypt=true ^
-Dcom.sap.iotservices=true ^
-Dcom.sap.iotservices.loggerNotPrintStackTrace=false ^
-Xdebug ^
-Xrunjdwp:transport=dt_socket,server=y,address=8024,suspend=n ^
-Dcom.sap.iotservices.genetic.code=1024 ^
-Djavax.ws.rs.ext.RuntimeDelegate=org.apache.cxf.jaxrs.impl.RuntimeDelegateImpl ^
-Dorg.apache.cxf.Logger=org.apache.cxf.common.logging.Slf4jLogger ^
-Dorg.owasp.esapi.resources=config/esapi ^
-jar org.eclipse.osgi.jar --launcher.suppressErrors -consoleLog -console -nosplash "$@"
