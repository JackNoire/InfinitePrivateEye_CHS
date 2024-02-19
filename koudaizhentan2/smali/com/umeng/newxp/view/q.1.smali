.class Lcom/umeng/newxp/view/q;
.super Ljava/lang/Object;
.source "DownloadDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/umeng/newxp/view/o;


# direct methods
.method constructor <init>(Lcom/umeng/newxp/view/o;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/umeng/newxp/view/q;->a:Lcom/umeng/newxp/view/o;

    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/umeng/newxp/view/q;->a:Lcom/umeng/newxp/view/o;

    invoke-virtual {v0}, Lcom/umeng/newxp/view/o;->cancel()V

    .line 160
    return-void
.end method
