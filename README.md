# vagrant-box-ubuntu-develop

PBS Pro をインストールした Ubuntu 18.04 (bionic) 64 bit

## ボックスを自前で作成する

### クローン

```bash
git clone https://gitlab.com/takahiro-itou/vagrant-box-ubuntu-pbspro.git
cd  vagrant-box-ubuntu-pbspro
```
### ボックス作成

```bash
./setup.sh
```

### 作成したボックスを登録する。

```bash
vagrant box add  --name <yourname>/ubuntu-bionic64-pbspro  ubuntu-pbspro.box
```

## 作成済みのボックスをダウンロードして使う

takahiro-itou/ubuntu-bionic64-pbspro
- https://app.vagrantup.com/takahiro-itou/boxes/ubuntu-bionic64-pbspro
