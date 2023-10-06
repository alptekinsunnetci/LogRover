# LogRover: Basit Veri Temizleme Aracı

LogRover, belirtilen dosya yollarında bulunan ve belirli bir yaşın altındaki log dosyalarını temizlemek için kullanılan basit bir PowerShell aracıdır. Bu araç, sistemlerinizde yer alan gereksiz log dosyalarını düzenli olarak temizlemenize yardımcı olabilir.

## Kullanım

LogRover'ı kullanmak için aşağıdaki adımları izleyebilirsiniz:

1. PowerShell'i başlatın.

2. `LogRover.ps1` dosyasını çalıştırmak için şu komutu kullanın:

   ```powershell
   .\LogRover.ps1

## Ardışık olarak temizlemek istediğiniz dosya yollarını ekleyin:

   ```$Paths = @(
"E:\website\test.com\logs",
    "E:\website\demo.com\logs",
    "E:\website\abc.com\logs",
    "E:\website\acme.com\logs"
)
   ```

## İstediğiniz eski dosya yaşını ayarlayın. Örneğin, 7 gün önceki dosyaları silmek için aşağıdaki satırı düzenleyin:

   ```$Older = 7   ```
