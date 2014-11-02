import org.eclipse.jetty.server.Server;
import org.eclipse.jetty.servlet.ServletContextHandler;

/**
 * Demonstrates how to use session tracking and enum types to
 * create a simple adventure game.
 *
 * @see AdventureServer
 * @see AdventureServlet
 * @see AdventureRoom
 * @see Direction
 */
public class AdventureServer {

	public static void main(String[] args) throws Exception {

		// type of handler that supports sessions
		ServletContextHandler handler;

		// turn on sessions and set context
		handler = new ServletContextHandler(ServletContextHandler.SESSIONS);
		handler.setContextPath("/");
		handler.addServlet(AdventureServlet.class, "/*");

		// setup jetty server
		Server server = new Server(8080);
		server.setHandler(handler);
		server.start();
		server.join();
	}
}
