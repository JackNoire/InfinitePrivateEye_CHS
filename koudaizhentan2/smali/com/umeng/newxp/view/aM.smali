.class Lcom/umeng/newxp/view/aM;
.super Ljava/lang/Object;
.source "SimpleDownloadDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/umeng/newxp/view/aK;


# direct methods
.method constructor <init>(Lcom/umeng/newxp/view/aK;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/umeng/newxp/view/aM;->a:Lcom/umeng/newxp/view/aK;

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .prologue
    .line 51
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 52
    return-void
.end method
