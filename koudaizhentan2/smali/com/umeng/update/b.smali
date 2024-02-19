.class Lcom/umeng/update/b;
.super Ljava/lang/Object;
.source "UmengUpdateAgent.java"

# interfaces
.implements Lcom/umeng/update/UmengDialogButtonListener;


# instance fields
.field private final synthetic a:Ljava/io/File;

.field private final synthetic b:Landroid/content/Context;

.field private final synthetic c:Lcom/umeng/update/UpdateResponse;


# direct methods
.method constructor <init>(Ljava/io/File;Landroid/content/Context;Lcom/umeng/update/UpdateResponse;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/umeng/update/b;->a:Ljava/io/File;

    iput-object p2, p0, Lcom/umeng/update/b;->b:Landroid/content/Context;

    iput-object p3, p0, Lcom/umeng/update/b;->c:Lcom/umeng/update/UpdateResponse;

    .line 239
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(I)V
    .locals 3

    .prologue
    .line 244
    packed-switch p1, :pswitch_data_0

    .line 259
    :goto_0
    :pswitch_0
    invoke-static {}, Lcom/umeng/update/UmengUpdateAgent;->c()Lcom/umeng/update/UmengDialogButtonListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 260
    invoke-static {}, Lcom/umeng/update/UmengUpdateAgent;->c()Lcom/umeng/update/UmengDialogButtonListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/umeng/update/UmengDialogButtonListener;->onClick(I)V

    .line 262
    :cond_0
    return-void

    .line 246
    :pswitch_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 247
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 248
    iget-object v1, p0, Lcom/umeng/update/b;->a:Ljava/io/File;

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    .line 249
    const-string v2, "application/vnd.android.package-archive"

    .line 248
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 250
    iget-object v1, p0, Lcom/umeng/update/b;->b:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 253
    :pswitch_2
    iget-object v0, p0, Lcom/umeng/update/b;->b:Landroid/content/Context;

    .line 254
    iget-object v1, p0, Lcom/umeng/update/b;->c:Lcom/umeng/update/UpdateResponse;

    iget-object v1, v1, Lcom/umeng/update/UpdateResponse;->new_md5:Ljava/lang/String;

    .line 253
    invoke-static {v0, v1}, Lcom/umeng/update/e;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 244
    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
