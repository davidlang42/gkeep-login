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

gkeepapi.node.DEBUG = True
keep = gkeepapi.Keep()
keep.login(g_user, g_pass)
print(keep.getMasterToken())