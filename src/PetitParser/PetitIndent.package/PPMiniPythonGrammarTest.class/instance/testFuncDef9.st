test-grammar
testFuncDef9

self parse: 
'def _run_callback(self, callback, *args):
        def wrapper():
            self._pending_callbacks -= 1
            try:
                return callback(*args)
            except Exception:
                app_log.error("Uncaught exception, closing connection.",
                              exc_info=True)
                # Close the socket on an uncaught exception from a user callback
                # (It would eventually get closed when the socket object is
                # gc''d, but we don''t want to rely on gc happening before we
                # run out of file descriptors)
                self.close(exc_info=True)
                # Re-raise the exception so that IOLoop.handle_callback_exception
                # can see it and log the error
                raise
            finally:
                self._maybe_add_error_listener()
        # We schedule callbacks to be run on the next IOLoop iteration
        # rather than running them directly for several reasons:
        # * Prevents unbounded stack growth when a callback calls an
        #   IOLoop operation that immediately runs another callback
        # * Provides a predictable execution context for e.g.
        #   non-reentrant mutexes
        # * Ensures that the try/except in wrapper() is run outside
        #   of the application''s StackContexts
        with stack_context.NullContext():
            # stack_context was already captured in callback, we don''t need to
            # capture it again for IOStream''s wrapper.  This is especially
            # important if the callback was pre-wrapped before entry to
            # IOStream (as in HTTPConnection._header_callback), as we could
            # capture and leak the wrong context here.
            self._pending_callbacks += 1
            self.io_loop.add_callback(wrapper)
' rule: #funcDef.

	self assert: result size = 4.
	self assert: result first = 'fundef:'.
	
	self assert: result second = '_run_callback'.

	self assert: result third size = 2.
	self assert: result third first size = 4.
	self assert: result third first second = 'wrapper'.
