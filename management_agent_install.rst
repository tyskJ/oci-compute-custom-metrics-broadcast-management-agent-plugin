Windows
=====================================================================
1. インストーラー取得
---------------------------------------------------------------------

1. OCI コンソール左上のハンバーガーマークをクリックし、``Observability & Management`` → ``Agents`` をクリック

.. image:: ./doc/image/pic1.png
  :scale: 100%

2. ``Download and Keys`` から、``Agent for WINDOWS (X86_64)``` をクリックしてローカルPCにダウンロード

.. image:: ./doc/image/pic2.png
  :scale: 100%

.. note:: 

  * ダウンロード後、対象インスタンスに持ち込む

2. インストールキー作成
---------------------------------------------------------------------

1. 先程の同じ画面にて ``Create key`` をクリック

.. image:: ./doc/image/pic3.png
  :scale: 100%

2. 各種情報を入力し ``Create`` をクリック

.. image:: ./doc/image/pic4.png
  :scale: 100%

3. 作成したインストールキーの情報が含まれる ``レスポンス・ファイル`` をダウンロード

.. image:: ./doc/image/pic5.png
  :scale: 100%

4. ``キー名.rsp`` ファイルがローカルPCにダウンロードされるため、デフォルトから今回の構成に合わせて修正

**windows-key.rsp**

.. code-block:: none
  :emphasize-lines: 15, 16

  ########################################################################
  # Please refer the following Management Agent Installation Guide for more details.
  #
  # https://docs.cloud.oracle.com/iaas/management-agents/index.html
  #
  # Since this file has sensitive information, please make sure that after
  # executing setup.sh you either delete this file or store it in a secure
  # location.
  #
  ########################################################################
  ManagementAgentInstallKey = hogehoge
  AgentDisplayName = 
  #Please uncomment the below tags properties and provide values as needed
  #FreeFormTags = [{"<key1>":"<value1>"}, {"<key2>":"<value2>"}]
  DefinedTags = [{"Common":{"Env":"prd","ManagedByTerraform":"true"}}]
  #CredentialWalletPassword = 
  #Service.plugin.jm-container.download=true
  #Service.plugin.mds.download=true
  #Service.plugin.osmh.download=true
  #Service.plugin.appmgmt.download=true
  #Service.plugin.logan.download=true
  #Service.plugin.dbaas.download=true
  #Service.plugin.jms.download=true
  #Service.plugin.opsiHost.download=true
  #Service.plugin.jm.download=true




参考資料
=====================================================================
リファレンス
---------------------------------------------------------------------
* `管理エージェントのインストール - Oracle Cloud Infrastructureドキュメント <https://docs.oracle.com/ja-jp/iaas/management-agents/doc/install-management-agent-chapter.html>`_
* ` <>`_
* ` <>`_
* ` <>`_