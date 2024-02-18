import sys
import gkeepapi

if len(sys.argv) != 3:
    print("Expected 2 args: GOOGLE_USERNAME, GOOGLE_APP_PASSWORD")
    exit(1)

gkeepapi.node.DEBUG = True
keep = gkeepapi.Keep()
keep.login(sys.argv[1], sys.argv[2])
print(keep.getMasterToken())