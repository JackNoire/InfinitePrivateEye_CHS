.class Lcom/umeng/newxp/view/at;
.super Ljava/lang/Object;
.source "LargeGallery.java"

# interfaces
.implements Lcom/umeng/common/net/q$a;


# instance fields
.field final synthetic a:Lcom/umeng/newxp/view/as;

.field private final synthetic b:Landroid/view/ViewGroup;


# direct methods
.method constructor <init>(Lcom/umeng/newxp/view/as;Landroid/view/ViewGroup;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/umeng/newxp/view/at;->a:Lcom/umeng/newxp/view/as;

    iput-object p2, p0, Lcom/umeng/newxp/view/at;->b:Landroid/view/ViewGroup;

    .line 208
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/umeng/common/net/p$a;)V
    .locals 3

    .prologue
    .line 223
    iget-object v0, p0, Lcom/umeng/newxp/view/at;->a:Lcom/umeng/newxp/view/as;

    invoke-static {v0}, Lcom/umeng/newxp/view/as;->a(Lcom/umeng/newxp/view/as;)Lcom/umeng/newxp/view/an;

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/newxp/view/an;->h(Lcom/umeng/newxp/view/an;)Lcom/umeng/newxp/view/LargeGalleryConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/newxp/view/LargeGalleryConfig;->getBindListener()Lcom/umeng/newxp/controller/XpListenersCenter$LargeGalleryBindListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 225
    sget-object v0, Lcom/umeng/common/net/p$a;->a:Lcom/umeng/common/net/p$a;

    if-ne p1, v0, :cond_1

    sget-object v0, Lcom/umeng/newxp/controller/XpListenersCenter$STATUS;->SUCCESS:Lcom/umeng/newxp/controller/XpListenersCenter$STATUS;

    .line 228
    :goto_0
    iget-object v1, p0, Lcom/umeng/newxp/view/at;->a:Lcom/umeng/newxp/view/as;

    invoke-static {v1}, Lcom/umeng/newxp/view/as;->a(Lcom/umeng/newxp/view/as;)Lcom/umeng/newxp/view/an;

    move-result-object v1

    invoke-static {v1}, Lcom/umeng/newxp/view/an;->h(Lcom/umeng/newxp/view/an;)Lcom/umeng/newxp/view/LargeGalleryConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/umeng/newxp/view/LargeGalleryConfig;->getBindListener()Lcom/umeng/newxp/controller/XpListenersCenter$LargeGalleryBindListener;

    move-result-object v1

    iget-object v2, p0, Lcom/umeng/newxp/view/at;->b:Landroid/view/ViewGroup;

    invoke-interface {v1, v0, v2}, Lcom/umeng/newxp/controller/XpListenersCenter$LargeGalleryBindListener;->onEnd(Lcom/umeng/newxp/controller/XpListenersCenter$STATUS;Landroid/view/ViewGroup;)V

    .line 230
    :cond_0
    return-void

    .line 227
    :cond_1
    sget-object v0, Lcom/umeng/newxp/controller/XpListenersCenter$STATUS;->FAIL:Lcom/umeng/newxp/controller/XpListenersCenter$STATUS;

    goto :goto_0
.end method

.method public a(Lcom/umeng/common/net/q$b;)V
    .locals 3

    .prologue
    .line 211
    iget-object v0, p0, Lcom/umeng/newxp/view/at;->a:Lcom/umeng/newxp/view/as;

    invoke-static {v0}, Lcom/umeng/newxp/view/as;->a(Lcom/umeng/newxp/view/as;)Lcom/umeng/newxp/view/an;

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/newxp/view/an;->h(Lcom/umeng/newxp/view/an;)Lcom/umeng/newxp/view/LargeGalleryConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/newxp/view/LargeGalleryConfig;->getBindListener()Lcom/umeng/newxp/controller/XpListenersCenter$LargeGalleryBindListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 213
    sget-object v0, Lcom/umeng/common/net/q$b;->a:Lcom/umeng/common/net/q$b;

    if-ne p1, v0, :cond_1

    .line 214
    sget-object v0, Lcom/umeng/newxp/controller/XpListenersCenter$BindMode;->BIND_FORM_CACHE:Lcom/umeng/newxp/controller/XpListenersCenter$BindMode;

    .line 217
    :goto_0
    iget-object v1, p0, Lcom/umeng/newxp/view/at;->a:Lcom/umeng/newxp/view/as;

    invoke-static {v1}, Lcom/umeng/newxp/view/as;->a(Lcom/umeng/newxp/view/as;)Lcom/umeng/newxp/view/an;

    move-result-object v1

    invoke-static {v1}, Lcom/umeng/newxp/view/an;->h(Lcom/umeng/newxp/view/an;)Lcom/umeng/newxp/view/LargeGalleryConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/umeng/newxp/view/LargeGalleryConfig;->getBindListener()Lcom/umeng/newxp/controller/XpListenersCenter$LargeGalleryBindListener;

    move-result-object v1

    iget-object v2, p0, Lcom/umeng/newxp/view/at;->b:Landroid/view/ViewGroup;

    invoke-interface {v1, v0, v2}, Lcom/umeng/newxp/controller/XpListenersCenter$LargeGalleryBindListener;->onStart(Lcom/umeng/newxp/controller/XpListenersCenter$BindMode;Landroid/view/ViewGroup;)V

    .line 219
    :cond_0
    return-void

    .line 216
    :cond_1
    sget-object v0, Lcom/umeng/newxp/controller/XpListenersCenter$BindMode;->BIND_FROM_NET:Lcom/umeng/newxp/controller/XpListenersCenter$BindMode;

    goto :goto_0
.end method
