| Number Of Bytes | Code Point Range | Byte 1   | Byte 2   | Byte 3   | Byte 4   |
|-----------------|------------------|----------|----------|----------|----------|
| 2               | U+0000~U+007F    | 0xxxxxxx |          |          |          |
| 2               | U+0080~U+07FF    | 110xxxxx | 10xxxxxx |          |          |
| 3               | U+0800~U+FFFF    | 1110xxxx | 10xxxxxx | 10xxxxxx |          |
| 4               | U+10000~U+10FFFF | 11110xxx | 10xxxxxx | 10xxxxxx | 10xxxxxx |
