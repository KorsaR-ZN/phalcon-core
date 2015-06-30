
/*
 +------------------------------------------------------------------------+
 | Phalcon Framework                                                      |
 +------------------------------------------------------------------------+
 | Copyright (c) 2011-2015 Phalcon Team (http://www.phalconphp.com)       |
 +------------------------------------------------------------------------+
 | This source file is subject to the New BSD License that is bundled     |
 | with this package in the file docs/LICENSE.txt.                        |
 |                                                                        |
 | If you did not receive a copy of the license and are unable to         |
 | obtain it through the world-wide-web, please send an email             |
 | to license@phalconphp.com so we can send you a copy immediately.       |
 +------------------------------------------------------------------------+
 | Authors: Andres Gutierrez <andres@phalconphp.com>                      |
 |          Eduar Carvajal <eduar@phalconphp.com>                         |
 +------------------------------------------------------------------------+
 */

namespace Phalcon\Mvc;


use Phalcon\Http\ResponseInterface;

/**
 * Phalcon\Mvc\ControllerInterface
 *
 * Interface for controller handlers
 */
interface ControllerInterface
{

	/**
	 * Redirect by HTTP to another action or URL
	 * This method is alias for Phalcon\Http\Response::redirect()
	 */
	public function redirect(var location, boolean externalRedirect = false, int statusCode = 302) -> <ResponseInterface>;

	/**
	 * Forwards the execution flow to another controller/action
	 * Dispatchers are unique per module. Forwarding between modules is not allowed
	 *
	 * This method is alias for Phalcon\Dispatcher::forward()
	 */
	public function forward(array options) -> void;
}