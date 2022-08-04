<?php

namespace App\Http\Middleware;

use App\Models\Routelogger;
use Closure;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class LogUserRoute
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure(\Illuminate\Http\Request): (\Illuminate\Http\Response|\Illuminate\Http\RedirectResponse)  $next
     * @return \Illuminate\Http\Response|\Illuminate\Http\RedirectResponse
     */
    public function handle(Request $request, Closure $next)
    {
        // dd(Auth::user());
        $data = [
        'route' => $request->fullUrl(),
        'ip' => $request->ip(),
        'agent' => $request->userAgent(),
        'user_id' => Auth::id()
        ];
        Routelogger::create($data);
        // dd(request()->ip());
        return $next($request);
    }
}
