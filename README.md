# ⚡ XTRa-hook-shot ⚡

[![GitHub Release][ico-release]][link-github-release]
[![License][ico-license]](LICENSE)

GitHub action to fire a webhook and set job status based on the actual data returned by the server
Supports triggering any webhook events.

<hr/>


## Usage

When triggered this action POSTs data that you pass to it to another server:


```yml
- name: Test Fire hook job
  uses: xtrakTD/xtra-hook-shot@v0.1.0.0
  with:
    data: "{\"user\":\"${{ github.actor }}\",\"branch\":\"${{ github.ref }}\",\"environment\":\"test\"}"
    url: ${{ secrets.DEPLOY_HOOK_URL }}
    headers: "-H \"Authorization: token ${{ secrets.DEPLOY_TOKEN }}\""
```

### Inputs

All inputs are passed to the `curl` command with POST method.

|  Name  |  Required  |  Default  |  Description | Example |
| :--- | :--- | :--- | :--- | :--- |
|  url  |  true  |  ""  |  Endpoint URL  | `"https://****"` |
|  data  |  true  |  ""  |  Data to be posted  | `"{\"event_type\":\"build\"}"` |
|  headers |  false  |  ""  |  Headers to be added to the request  | `-H \"Authorization: token ${{ secrets.DEPLOY_TOKEN }}\"` |


With the inputs above, the action will invoke the following command:

`curl -X POST https://**** --data "{\"event_type\":\"build\"}" -H "Authorization: token ${{ secrets.DEPLOY_TOKEN }}"`

## Issues

If you find any issues or have any suggestions for improvement feel free to [let me know](https://github.com/xtrakTD/xtra-hook-shot/issues/new)

## License

The MIT License (MIT). Please see [License File](LICENSE) for more information.

[ico-release]: https://img.shields.io/github/tag/xtrakTD/xtra-hook-shot.svg
[ico-license]: https://img.shields.io/badge/license-MIT-brightgreen.svg
[link-github-release]: https://github.com/xtrakTD/xtra-hook-shot/releases