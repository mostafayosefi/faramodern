<?php

namespace App\Exceptions;

use Exception;
use Illuminate\Validation\ValidationException;
use Illuminate\Auth\Access\AuthorizationException;
use Illuminate\Database\Eloquent\ModelNotFoundException;
use Symfony\Component\HttpKernel\Exception\HttpException;
use Illuminate\Foundation\Exceptions\Handler as ExceptionHandler;

class Handler extends ExceptionHandler
{
    /**
     * A list of the exception types that should not be reported.
     *
     * @var array
     */
    protected $dontReport = [
        AuthorizationException::class,
        HttpException::class,
        ModelNotFoundException::class,
        ValidationException::class,
    ];

    /**
     * Report or log an exception.
     *
     * This is a great spot to send exceptions to Sentry, Bugsnag, etc.
     *
     * @param  \Exception  $e
     * @return void
     */
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     /*
    public function report(Exception $e)
    {
        parent::report($e);
    }
*/
    /**
     * Render an exception into an HTTP response.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Exception  $e
     * @return \Illuminate\Http\Response
     */
  /*
  public function render($request, Exception $e)
{
    if ($e instanceof TokenMismatchException) {
        // redirect to form an example of how i handle mine
        return redirect($request->fullUrl())->with(
            'csrf_error',
            "Opps! Seems you couldn't submit form for a longtime. Please try again"
        );
    }

    /*if ($e instanceof CustomException) {
        return response()->view('errors.404', [], 500);
    }*/





    if ($e instanceof \Symfony\Component\HttpKernel\Exception\NotFoundHttpException)
       

    return parent::render($request, $e);
}



public function render($request, Exception $e)
{
    if ($this->isHttpException($e))
    {       
        if($e instanceof NotFoundHttpException)
        {
    
        }
        return $this->renderHttpException($e);
    }
    return parent::render($request, $e);
}

  
  
}
