.class Lcom/umeng/update/c;
.super Ljava/lang/Object;
.source "UmengUpdateAgent.java"

# interfaces
.implements Lcom/umeng/update/UmengDialogButtonListener;


# instance fields
.field private final synthetic a:Landroid/content/Context;

.field private final synthetic b:Lcom/umeng/update/UpdateResponse;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/umeng/update/UpdateResponse;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/umeng/update/c;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/umeng/update/c;->b:Lcom/umeng/update/UpdateResponse;

    .line 267
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(I)V
    .locals 2

    .prologue
    .line 271
    packed-switch p1, :pswitch_data_0

    .line 282
    :goto_0
    :pswitch_0
    invoke-static {}, Lcom/umeng/update/UmengUpdateAgent;->c()Lcom/umeng/update/UmengDialogButtonListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 283
    invoke-static {}, Lcom/umeng/update/UmengUpdateAgent;->c()Lcom/umeng/update/UmengDialogButtonListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/umeng/update/UmengDialogButtonListener;->onClick(I)V

    .line 285
    :cond_0
    return-void

    .line 273
    :pswitch_1
    iget-object v0, p0, Lcom/umeng/update/c;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/umeng/update/c;->b:Lcom/umeng/update/UpdateResponse;

    invoke-static {v0, v1}, Lcom/umeng/update/UmengUpdateAgent;->startDownload(Landroid/content/Context;Lcom/umeng/update/UpdateResponse;)V

    goto :goto_0

    .line 276
    :pswitch_2
    iget-object v0, p0, Lcom/umeng/update/c;->a:Landroid/content/Context;

    .line 277
    iget-object v1, p0, Lcom/umeng/update/c;->b:Lcom/umeng/update/UpdateResponse;

    iget-object v1, v1, Lcom/umeng/update/UpdateResponse;->new_md5:Ljava/lang/String;

    .line 276
    invoke-static {v0, v1}, Lcom/umeng/update/e;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 271
    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
