#!/bin/sh
export LD_LIBRARY_PATH=/app/extra/lib:${LD_LIBRARY_PATH}
exec /app/bin/splash
