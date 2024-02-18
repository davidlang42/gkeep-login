import os
import gkeepapi

g_user = os.getenv("GOOGLE_USERNAME")
if not g_user:
    print("Must set environment variable GOOGLE_USERNAME")
    exit(1)

g_pass = os.getenv("GOOGLE_APP_PASSWORD")
if not g_pass:
    print("Must set environment variable GOOGLE_APP_PASSWORD, see https://myaccount.google.com/apppasswords")
    exit(1)

keep = gkeepapi.Keep()
try:
    keep.login(g_user, g_pass)
except:
    # upon logging in, this loads some of the user's data from keep
    # this may crash because we are using old versions of gkeepapi/gpsoauth/etc which can't parse the data
    # the login still succeeded and the resulting token is valid
    pass

print(keep.getMasterToken())