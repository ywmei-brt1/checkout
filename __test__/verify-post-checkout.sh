#!/bin/bash
echo "=== Post-Checkout Script Executing ==="
echo "Current Working Directory: $(pwd)"
echo "GITHUB_WORKSPACE: $GITHUB_WORKSPACE"

if [ -z "$GITHUB_WORKSPACE" ]; then
  echo "Error: GITHUB_WORKSPACE environment variable is not set!"
  exit 1
fi

# Also verify we are running inside the checked out repo (subdirectory)
if [[ "$(pwd)" != *"/post-checkout-test" ]]; then
  echo "Error: CWD is not the checkout directory (expected to end with /post-checkout-test)!"
  exit 1
fi

echo "Post-checkout script verified successfully!"
