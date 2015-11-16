# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Task.create(user_id: 1, needed_id: 2, needy_confirm_completion: nil, needed_confirm_completion: nil, location: 'Vancouver', description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam faucibus magna ut bibendum dictum. Donec sed condimentum felis, non imperdiet sem. Nulla magna tortor, ultrices eu dignissim eget, maximus eget lacus. Aenean volutpat porta leo, interdum facilisis nibh tristique vitae. Praesent vitae metus eu arcu luctus aliquam sed ut enim. Aenean quam tellus, finibus id libero ac, vulputate fringilla justo. Donec diam metus, tincidunt et volutpat eu, posuere a odio.', estimated_duration: 120, category: 'test', compensation: 88, difficulty: 'easy', title: 'Test1' )
Task.create(user_id: 1, needed_id: 3, needy_confirm_completion: nil, needed_confirm_completion: nil, location: 'Vancouver', description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam faucibus magna ut bibendum dictum. Donec sed condimentum felis, non imperdiet sem. Nulla magna tortor, ultrices eu dignissim eget, maximus eget lacus. Aenean volutpat porta leo, interdum facilisis nibh tristique vitae. Praesent vitae metus eu arcu luctus aliquam sed ut enim. Aenean quam tellus, finibus id libero ac, vulputate fringilla justo. Donec diam metus, tincidunt et volutpat eu, posuere a odio.', estimated_duration: 120, category: 'test', compensation: 88, difficulty: 'easy', title: 'Test2' )

Task.create(user_id: 1, needed_id: 4, needy_confirm_completion: nil, needed_confirm_completion: nil, location: 'Vancouver', description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam faucibus magna ut bibendum dictum. Donec sed condimentum felis, non imperdiet sem. Nulla magna tortor, ultrices eu dignissim eget, maximus eget lacus. Aenean volutpat porta leo, interdum facilisis nibh tristique vitae. Praesent vitae metus eu arcu luctus aliquam sed ut enim. Aenean quam tellus, finibus id libero ac, vulputate fringilla justo. Donec diam metus, tincidunt et volutpat eu, posuere a odio.', estimated_duration: 120, category: 'test', compensation: 88, difficulty: 'easy', title: 'Test3' )
Task.create(user_id: 1, needed_id: 4, needy_confirm_completion: nil, needed_confirm_completion: nil, location: 'Vancouver', description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam faucibus magna ut bibendum dictum. Donec sed condimentum felis, non imperdiet sem. Nulla magna tortor, ultrices eu dignissim eget, maximus eget lacus. Aenean volutpat porta leo, interdum facilisis nibh tristique vitae. Praesent vitae metus eu arcu luctus aliquam sed ut enim. Aenean quam tellus, finibus id libero ac, vulputate fringilla justo. Donec diam metus, tincidunt et volutpat eu, posuere a odio.', estimated_duration: 120, category: 'test', compensation: 88, difficulty: 'easy', title: 'Test4', image_url: "data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAOEAAADhCAMAAAAJbSJIAAABnlBMVEX+/v7///8AlsVbxvz7mAD7+/v39/f5+fny8vL19fXt7e3w8PDo6Oja2trj4+Pr6+ve3t4AksMAHDUAIDhry/zdgQBfzf/7kgDc8v0AOExZxfzN7f0AJj3xkQBkyfwAmMbMdAC75/3v+PvD6f2p4fwAIzbafgDlhwAAKkDujgAAO0+X2vyG1PxNpd4AMUbAaQCO1/zj+v+Z0eVvtONdreDIcQDj8PkAjMDP5fWp0u6grbPI1NgAocwALkDR6/RMq9pof4kAFDE3hqwgYH3+8+W0XQA/W2i73uwUUWqBorB+lZ4uUGBbtNVMb32Ixt+s2uqrub+cyuusub6YtcK0z9tGos87krtUsdQjZIL93bf8tk3HkmMVSVxcfo6AvuckqtBmqck0eJgze5xrjJqos7lMY3CPr71YlrOPnqW/8P+Fs8hch5xzorlEb4Fuwdx0iJHt3sq8djrUtZSnXwDfx7Gpk2zSmDGEmoQAU3S6l2Susp/7piP9wHnfiSqDusu0aCD94L/YuKH9xYbhrXigm4P9v2b92aHDfAD8qEHDiFGiTkNlAAAZh0lEQVR4nO1di1/bVpb2gZhHQgBbGbCNB4qDW1eAGgxjjG2MgdQGP3mbTgUuISRM0phMZ3Z2d2Z2pjO77ez+13vuvZIsyZJsY0uQ/ji/pk2N0b2fz3fPW7LL9SAP8iAP8iAP8iAP8iAP8iAP8iAP8iAP8iAP8osRoHLXu7BPAIaSKMO/VIwA4zdXBVEsXN0kf5GahPEzLsLvbG/v8BGvmBgf+KVhhKQY5reON/r7A8db2+tB/83BqA7jp61XSBbC2wiPSeD4dD0sZPNqtgJ8/PmbT5e9MFoIv+pXyUT/1jYfRraOSnYHXv40OTn56KcfX7o+SZCQD+404E0/CwT6pwMbWzvrQT5zMIKQwP3T5COUycm//PObl58eRhiOCApF+wPzobnpAIJEtm6vh/1ZYlt/fiTL5KP//evPnxpdIR++CCgAn/lw+1ML0+SVicDJNrGtf558pBKk629/fOn+dEDCaJY/VqmQbBzcU/NEjcjW460d/78e6QTp+tdPh66QWN9unMJAiG0b3L4XlKv40v/8Wo+Q0fWnT4OuMFIIq07hnLJjgNA8MTr9f/s1igFG1OTkb7+5/3SFRHBnonEKY6rtAsRmnwX6//TFF19+aQry/tMV+HXVKZzT/RBCs3/+1RdfWGC893SFBHeqMqQh/T7h4399/vmvJJBfmoG8x3SFoSvhpKHC2SaA7v/+7LPPCUZFk4YY7y9d4cC/01Bhf/PPP371m88+k0Bas/V+0hWelMInDTvzvGlz8O3fv/66A5A0GLhPsSskBb7B0YVQ8xtcH//xe4LxN5+p2PqlJch7FbtCKbylqLC/WYU0LXzy8duvJUV+3o4iaez64/2gKyQ3VadwwexduNU/KmxtE+Tko3+icXUUjdHWXZnIVoOkPvMNIciP//g/Y7aaYERNoiIdRGO476QoNjL7BYvt0DLjsBlbTTH+5Zu7hQiDN+FXjVMYM90NRm/ncQbzj9/+vhO2TrruFCKM8+uNUzhn/r5QaH9x0c3+rmJrGxgn71aJmPmeyiokia/pG9eWVxbPGzWp4ZfI1q+0ijTxH3eLEIY2+cYpbIrXGkI0uHgec8vmX2arAvJX5pq8axUqxYvAtNvijaFlhLgSR7bKLs7AthphnPz5TlU4kvUft6NCF8RXFtfWlkNry8vncVUFdejjDyrbahTt/OXlnSJMRE6N4rXmSMS9v7iM2gudLy8TtqqKAIStxpEABfjrH0bvMKOCsWxYUeH0VGPbab3XgNjK4j5QkxqLq0wO+VGIsPVbM//xr3Uxf/DkrjDCXkRUDKkqXoNaLaqNKGFtcRFRAxBTg38Hl9xmxAO6hhgHCFu/ambr5L//RzjMX12P3EmICiA0iheBkEqFq32emWhMtSVYWVzGLRKDuh87X1xBvq6txcmvkNdi0GxbJQfyp4mJwKsdf9hbOBhxPkSFPW5bMaTzKjh1T19fnycVVR03RBhzx/AInq8sos2B2DL1HkD+si/ZYICX//j2Ky1b/xYgNeXjCzESLOTHHVYjDJSU4oW6vga+VB+TWllxf2vEVawRmCFUYQz/f2Vtf/E8BDniQpRfhYGXP3ylUuR/Tksf4cbJTjhc2HMWIuwJjbRJ5Skg6pEQqrgK8fPzEEVIlOZyITqA3D7Be65mH2HrR4Wt//qbEvH2T2xcCN4bJ2NUGMooxQv0FA09hKp9DVG4SowMev3l/WWiNIijDjHSwf8iZUHrXpCtf/z2D4St/9Yf6FdhPBG9CScRJoV1xcxMqVSY8/RpJFWWAQBx+MtEaYBKXEFocI52FXLnaE5dGk0Ov/zhD19/XVQDRDnxi0nnIEI2sqWoUL27Wp9OVotyqEY4uIYqjMeoXQ0B2p79OBqdlRy4Q6Bn658nAlqIE1vh0pBTECHplTPfwLQqp4C0R4+wHoK6yq5i+H2+HCPg4gQmanFlLQbx/fM1XZwA4Jt7psPIC44pEW7CcvFCkxYyV6E+iWVUTtHTiAGA+MCVfUQWIgcTg50Y8neFBOZr+lDIFZrVYJy4COcdQghJcUdWobqMD7kZLcCZHDEkCBttjvI+WFumeNBnxM/R1BDMy7Hc8mJzrVXptEpeY73gDEIYzIdfTUsINQXEslaFMxUamtFXPWmVwY3n4i7qKs4X90PEXyJxfftGuyedVsWmbvB+hxCOiOGArEK1gYiltCqsMAtDXKSnqNY1kRhxFdTvk7+igzRJMMHtm5e4usFHHEKYCV/IMbe6dAFaFXoq0tGreChf9VeJ7btJUEPiUpJxmAeeyPTzDYJxw887ghCGIn75FGrMjFvBxoyMnM6jj/QUmzVEjihqLxbPES+iCt8MlsxS030cLjmD8FouXugavlLAhpZztUFLgAqGOatNKpQkh9YG/SFmkGbvINcYoc5p4pS7dgIhjBbkyQuNmYHYMYtiKsQ/9KWoZcEzViNwa2Y7wwOJFF0h2YcFwjxzTuv+UUcQJtZPDcwMqpB5eEQG6RlPlP2skqKKtVAQpiP7KyvLFiSFx1e0IHQczjgR08DjbPh42sDM0Jg7lWYGo9zHcvgodZAaQ2pwSXcsZqFBFxzwJI+ZuIg4EnpDgpMmL7RFbmox+6oxGkNDmthRcJdXZcff4qJWqR8M3NAO3oZYcCJoAxDXj6eniRK1QwkwQ/36TDnEzh95LSqZ1mJ3S46IpHcwfSKUnEgQ4YDb7p8mEHUdbSQkM6W1tByCVuT0It3VxmCPzetccE6QFIavhJNnFKG+lwauKAtpPHWmxvSqpMJ6dxsjrKEBjXfYERX6d6YpwOZGDEC6TC2np0rsaUxOFWe6VOGol4b5J+GsIyrMhLeYCo16aeCKVT0kCE1hTltXEiiLjkY7a+bp+PHENrfnBMJk0P8MZXp6wdj+ox6L5Dx6ohWJo5Lrv/2SY2y0MxAWR5xAWEIVEuk3bRaSKI1E2ilFhV2ewgP/NrWk4ZsB+xHCOCcuUx3OW/mvUKWvkWR4LJ196yUxF6UVodP11w4AhEyEqdCEo8r7XNGahFGO3m695ihrpG+IWQdiUjp5QRFOtYxRfLJZ7U6FZHh1m6jwZD3jAED3dfCCApzXvm5YfXCli6seOc3vYtECbeEFTp2wpPCUX6cAn2nSccjFDIMpYlb7il3GWfLM1YY/4kDXgkxeLBCAmnANYil1n0nzC6FKd55CyQynt8JnDgAcjAhVylGtBy9LWa/BDhqzF7ddU8oMJ3Y4B9IKyLNTuBDTcpQVZWo5i0pSOnRLjHAgbNMiWzg7ZjtCctvIdwsLC1o7CiHFs9fTZjCgXov6boORZobTtGORt78HDK/XtwnAF9qcqaxqF9ZN6AihdD1FPoBONykXZgPb/gP7AY4UwlVEqPX1UFGX8T0zUWM6IrZQOVXNdUpWuOboVNkxf/XYARUGdwhAHUer2jK++XFEjNFqrRLrCKOUGfZvRW4csDNimJxCna/Xt5pQjVWz44gY09UUZsdtg4Rx7w4jqdd+Swp7XnIKF3S+frWvCWG5VjdTFGJb6oSscMMGkDfW7W/IwHBJeNvE0VhTw9dTS0NxVdVJa7oQxKLVamWpHYwwwjLDiVdh+0lKihcIUFs+VLL4BkCiviqJtyvml4JQrpoqt0FWKTPsn+CDtpOUTF68fbEwr7WjUX2/N5UjRpMUhj19FuEaIWs9VW0VBpCKyck0dfcl2y0pJAU/qlAbzMT0GiT1JxcsUeqWW1wQfJVa1cS3yO/BzLCfkfS6JygsN1QKv3qxMKt1FEWtClflGmKKHMeWWSEha82SrHJmGNjh7SdpclM8X5jTBdw6jpalkRKCsM9i5LtxVUyv6jNFU7LKtzUe+69sL9BAJvL2he4QKjMJEtCo6gdtF58ky2roXSDJnGH/K/sHMCBZQBVq1AIuKeD2eMrk3K1GXVI7FLPeTioXjKxGYYDcMwzsbI7bjBDcee7VvPYQutkh9JCDREwqUxq4aeWiswIpmVkwCANIKkNb6cdh0XYVjovhhTntbXe0LYj4lshhSnnqNNTB6JoUg1c7Ls0gxkq1GtWEeyQzpM7wNGh7Zxsz39M5raNI00NYluozVWo5EWqVVddukwhCKF5UJ1gwfMOc4YQgPLWbpMNef1lrG4FNWFZYkAq0GAPusocyt7WjMF4G8AqpWiUkHehxP5t9dKCzjTnahe5eCkyEaDG0KB04oAxts91rsRJanWKtnKbXu2b3G03b39nG8Fd4Z7CXosfDwjT2QqgoR6bd7IckWGh18CDLmeHGju0zpZDgzgx4R90CGz100WqNPErTbfUQSGenjM6QjcmfCBmb66TwOOs1KYbS3gSdsoCYnOp32UmTrgwhOTMM2N/Zhr1NsyVI7WXV46kuqWa7u2zDKJeWHwezIW4+sVmFIFyb1+VJFjSzWvMpfaYuW4WNC7+WhpLs72zDnvVkNbhyVU9KBpjqss+kXHVIygzt72zDQKkVSdBzyMF3lxMJqmtKmWF//zpvc9MQkq0XQFNXZ5M03TbSGpfMs/lVBzrbAyPqdc2rS2kMxKXgtBeiPPDmdN3upuGAatPojM0xhiqpmd4BlDNDhwbZ5GVDxdW6aXsFyB2+PVtKfk7DScSBznZjWXpLQdmiENqzlcbZyLNDnW15Val06MGY0XrR7u/2pD3DABtkc/BmNaXu5KmlrQ4cxGrlWFcnEoZKbELXmc62vGpUVfedKVv5PXeuXCvnutAjPPULdAR5Ysf+UreyaE5bOExFLagILpIA5W5NVjkzdGqQja5Z0d3NRBJDC9NJE6BU9HZkxUhY2Jh2rLPN1szp7vVhma65dyS/487VpWy909UwM2QzyE50ttmSab0GpeNYtx4/d8dott4pWUlmSEd0N/isMyRlVXpjjJUW83uMrB0pklSfNyjCLQeahnTFdE3fyFZhrOasx38xuUKy5jrACK8jp2RAF0nqQGfbpSrAmEBsWbVgZG3bstLMkMyvPnNmkI34byuAyv13ltegZG0zDICngp8NBzrQjyHrxaqWAPvarFogWcu1ejtkJZkhQ8hHnBhkgxYabD8jBFcsmqpGWz6WHfzrbES354Nshg08/ThQE8BOrCRiy5HOhHVje897ylR40eN+DIw2FwuUMrYZwI7nm8kdJ7Wi1TQNacUyhD3ubGNG1lRZBqhaA6y108nWL2TaD5X2URDpBOuzY/6qp/0YSIqcrqjWkqLVpdu2mNJ1s7Eo8uCpBWZJe307LEYSwZI6RmpF0W4qh2TSpFqLNse15GGvxxJJvb3ubMOoP5hVaRGiq5Yq7KKH5mItpnqqqI8DYFxYZyrcWO/9Xen4+QXFZGNF6fYlE0l1BdBFyeoq12iGpfpYb8KvFgjEBVs62zB24xUTKojs9iXjQ9gtQLZCCIPWeiPRxMzQT2d0nz0T/HaMX8DgjVdIqD9Sze1LaoC96jBh0BpNKffukczwGUG4ULVpkA1gT+QyKnujvn1JLT0CyJYAJS6CzPpbCnDhImLTTVwASZ67UvNDuX1Jo0F7agskMyxSgOc2drZxFS6bVFs4+fYlRVaLNiU1JDNkKvxOuLKvQAMDpUjwelB9fdCa1d71X3QrPy7RQXJCUls725AR/FxeG9aTUEtugtZ7157QLcxGWAlJRa+NnW14nC1c8pGS9suoyJ0E7HkCtxwHamflfPDiBSNpxM5HJeFBzMZz2cjmwaBWjQBocrq+XdJiYQj6zynAF/Z2tuFpIZvzxS8FIa/3SJj6VK0ez9HlwpgZMpIuREQ7O9swmi0c+XzpN95Itulr09y2aZBlhhJJOXsH2dDSHC75fEtHHyJCQv+QBlVI1+tlyZDuCwrxVLC31A3X3KWPSPwyGMkY0wVyZcuS/m2WTUQuXlA5Fwv2jgTDyKaYoxB9h7xX6/2V94TqrATau7bvkxL3HUP41vZ7tuGGyzKES7mziPfM6DHF+FKlmqrHbntnaPMFk0F+ngJc+OC1u7MNI1nuMr3EQO6KXPbA5Gb0XLlWrPQII2aG7xnCcz44aDNC/Dx5oZSTIB5lOT5jcsM9xCo1Nund9ZIgCGWG8K0TT2QjRRvv2RHT4xKqkd8zHkxiVaVarrO7Jo0utOf98GKeQJwXHelsw2ie5/xnRz6K8eiMi2TMnsOM8VyFDC53hZF80cnbeSovwgVHmoYwOJKJePnSmyWCMf1G4AoJMzIixlidtUJvuzXiDMsM4VvuxvZjyNYEGE5kBS+/SzzHUvrS7+WTZksTbLluTCskghdzDKFjnW2yLIy8LnFBcfeIYDwsRYQbQ+covzsdrRWjbd0a2vS7j9EZMoDfOdXZllaGoWTWGyycEcMa30W01xbfYsxuDb3VTfdPI35JhW8dHWRzUf6NZwpB7gMa1qX4pej1J4asMEKofFzT1kDbWeUs+JYhfOFQZ1u7PCSvRS5YOkTncVQSuNKB1TPTiGkljftOTiS4I37JzpQF4S6+6AFcowneK2TfoMU5RDVeJa2ISGugNXIzd7t7Jc6QAZx7G3SYpMoeABIlv1e4jGMAgBa2cGDBVRYIFEkg0FYDFVwl4fu5OULTOUc622b7GD7I+Dnx8mgp/QYPZubgsaWK6O12GAi0UZeDpFgoz1GIZc6BR7SYbwQNa2aT488IRkLaxID1SBQGAuW2OveJ4Ic5Ju85++/ZttwKwFg+G/SKaHTeENLejFo4DykQKKYsu9q0uMeVGcD5gv33bLcSgNFENhjM7sZ9h2d+jr85GG7x0AAMBKqW46aQjPCSCt/1uLN9OwF4fCBiFHCZ9h1dejnhqgVZpWZotWLGVshw72WSBp16aL614E6TGZ7D9AoT5CvBu3mTtLSs7H47Nmdi8EO3l48ygNHed7ZvLYgxL2J6dehDsvKcUDoYazneTthqMCIGe5xsZ96t237PdvsCmF7dRLx+TK98uTMBLWv+SQubSdjajJA8iPF7xZLeD5JKgngGpPRqyffmiue4UrLFV2sZfQTEGUoknYsIjjyNvAMhRifDcZheLfkOLwnGxNOOB4Kvg+9nJZLqJ3rug5AogKSQGAX4jnZ5b6RwYxmzNl/g8ZX3HUM4+z7o5BcBtS2IZ5SkV1mMAjBLFrlN8WCs/Zo/JDnxd7MUYrTg5PcAdSRoWBMiUvQNHsijfCEYLFxb1AJ0v3sW/H6WyNzsO6F099/9ayYk0sFItbCLKWQO8yuukNlrqy4FrqA/Ossgvnfmex1uKwhnr4Tn8CznW1o6uixEvHxivHWmT271ZwBn12ztbPdEYCCJ6RV/eUgw7paCHJ9PWgbmJJ4pCe8khO+CDn0JUBcCMJy8xPSqhBh98aMPiPFqb9CyHECcIQP4uw+OfqXabYV8hzpJr/jDOCoyfYkBQSQzbh60wjX3/neSDjnHbuLqUgBGEldoTmkhOUcyLH/mtUnQCmNZLvqc4nv+PZdx4ksBeiIY6SRpeoXOYyl+dBn0RrL5EeOILchPPacQn3+wa5DNFmHpVXCTdq8waC3x3GYp2axIKAW/R4SI8XnU7s52z4WlV0LpME46O4eXIhfMJnRxAAxzfOU5k12nS909EHCP5AWv/2qXdK+mcruEuJmkOg6AhPdslgGcPfskLKlOyODo66zA+Wlnx7d0dFYIesXrkUH5oUSDV8KbKYZwjefuotTdvaDzOMgQ13/EGua72YhXzB8wjMQZ5hjCqd2gM981ZoPI6VXpiHaTc4cfvJy/lCBxAGaGZ1NTFOLUjte5pmHPBaGM3BQiXAGjADrAQuIA72Vy6HGBO5oi8nwq53Wms22bAIwnClJ6RWat3tDi1bUg+qaYfM/lnels2yeknSxK6RXBmLv0eyPBXQng8w+Cc0+/sE0a6VWaWp2pww9oZ5i88TvwNHInBAaTNzzHkyIrxXgkAcx9GmlFOwIw8PRmE20pxSjhm1r6EBGd/LZtewW5OnSN6ZX/TY6BRE1mg4X7VibtTgDGEqUIpldHeAxzJGLN3tcS260FI51kwcuJ2aurAu/1Zu57eeY2QtKr/FVBFAtXJHO86+3YI0SRyeTTFqWquxN3D6QHz5PqlRjsbnCQ/aORgVuI9goWH0fvUTUhM0czPEz+yDI0hH/w3+3LsEroxRh2zQfgtvoA2HZvqzMF0qAGkwqQWp5o5XEr0bzbDDaup1K4gppRqVNVG2BjkAaa4RiiGGvISHui+g0D7AbabqhZpeJWCHWcVBNRq6kmVGMU04gezmgngu9uQmyFtaFbhc8yk9vlpIJtSMGmBdako6Zdj7crerR6rHqkzURW67MVJRuE1Kjs8RNDXK0QPW0p+B4LvDqsxhrVYTQAJ5l8ZkfUhLRUmhW41sCagbYJUoap02YD5KApIyVzL2EbUoEbswCHu+kWXDNCE86aA2xokeiwmZMDzYbkFnrrDbh21KeFp+Ios6guK3hP2oXXI2xtodMaVhW44SE9OOYtLF2BxhPoXZoaoRbj085BtmVemrFpNKcQU+31XS79+RvQO3IjRY4ZatLYfipK1aEeN4TW1qkzOHYDxuhUJlQbWcrxyrAJznbcXwcOUI/L4sxpeKlSHY3c3KpAxm3gAQ1C6KY40yAsM4vHDCBbif7Xm6M2A3up4mWT6ozjFwZUFX6qqNuIrYeaITdF1B3EooYxqCoC14QsQ81xtybWtgpCzVJYTc43oDmsMmJ9YvTEFLix6LMJs5RCH3WqaHmLfMlcyRpGDzZluWZZVPsyrJHGlRtLunUp0i2hdfMJ6LPjFsn+oJWYLOAEts5h90DkBe4M2v2T/wdEAe2Lxa1HLQAAAABJRU5ErkJggg==" )

Task.create(user_id: 1, needed_id: 4, needy_confirm_completion: nil, needed_confirm_completion: nil, location: 'Vancouver', description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam faucibus magna ut bibendum dictum. Donec sed condimentum felis, non imperdiet sem. Nulla magna tortor, ultrices eu dignissim eget, maximus eget lacus. Aenean volutpat porta leo, interdum facilisis nibh tristique vitae. Praesent vitae metus eu arcu luctus aliquam sed ut enim. Aenean quam tellus, finibus id libero ac, vulputate fringilla justo. Donec diam metus, tincidunt et volutpat eu, posuere a odio.', estimated_duration: 120, category: 'test', compensation: 88, difficulty: 'easy', title: 'Test5' )

