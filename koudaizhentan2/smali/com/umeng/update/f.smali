.class public Lcom/umeng/update/f;
.super Ljava/lang/Object;
.source "UpdateInternal.java"

# interfaces
.implements Lcom/umeng/common/net/l;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private c:Lcom/umeng/update/UmengDownloadListener;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Landroid/content/Context;

.field private i:Ljava/lang/String;

.field private j:Lcom/umeng/common/net/a;

.field private k:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object v0, p0, Lcom/umeng/update/f;->c:Lcom/umeng/update/UmengDownloadListener;

    .line 28
    iput-object v0, p0, Lcom/umeng/update/f;->d:Ljava/lang/String;

    .line 29
    iput-object v0, p0, Lcom/umeng/update/f;->e:Ljava/lang/String;

    .line 30
    iput-object v0, p0, Lcom/umeng/update/f;->f:Ljava/lang/String;

    .line 31
    iput-object v0, p0, Lcom/umeng/update/f;->g:Ljava/lang/String;

    .line 33
    iput-object v0, p0, Lcom/umeng/update/f;->h:Landroid/content/Context;

    .line 34
    iput-object v0, p0, Lcom/umeng/update/f;->i:Ljava/lang/String;

    .line 36
    iput-object v0, p0, Lcom/umeng/update/f;->j:Lcom/umeng/common/net/a;

    .line 37
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/umeng/update/f;->k:Z

    .line 40
    const-string v0, "delta_update"

    iput-object v0, p0, Lcom/umeng/update/f;->a:Ljava/lang/String;

    .line 41
    const-string v0, "update_normal"

    iput-object v0, p0, Lcom/umeng/update/f;->b:Ljava/lang/String;

    .line 42
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Ljava/lang/String;ZLcom/umeng/update/UmengDialogButtonListener;)Landroid/app/Dialog;
    .locals 11

    .prologue
    .line 138
    invoke-static {p1}, Lcom/umeng/common/c;->a(Landroid/content/Context;)Lcom/umeng/common/c;

    move-result-object v0

    const-string v1, "umeng_update_dialog"

    invoke-virtual {v0, v1}, Lcom/umeng/common/c;->e(Ljava/lang/String;)I

    move-result v0

    .line 139
    invoke-static {p1}, Lcom/umeng/common/c;->a(Landroid/content/Context;)Lcom/umeng/common/c;

    move-result-object v1

    const-string v2, "umeng_update_content"

    invoke-virtual {v1, v2}, Lcom/umeng/common/c;->c(Ljava/lang/String;)I

    move-result v6

    .line 140
    invoke-static {p1}, Lcom/umeng/common/c;->a(Landroid/content/Context;)Lcom/umeng/common/c;

    move-result-object v1

    const-string v2, "umeng_update_wifi_indicator"

    invoke-virtual {v1, v2}, Lcom/umeng/common/c;->c(Ljava/lang/String;)I

    move-result v7

    .line 142
    invoke-static {p1}, Lcom/umeng/common/c;->a(Landroid/content/Context;)Lcom/umeng/common/c;

    move-result-object v1

    const-string v2, "umeng_update_id_ok"

    invoke-virtual {v1, v2}, Lcom/umeng/common/c;->c(Ljava/lang/String;)I

    move-result v2

    .line 143
    invoke-static {p1}, Lcom/umeng/common/c;->a(Landroid/content/Context;)Lcom/umeng/common/c;

    move-result-object v1

    const-string v3, "umeng_update_id_cancel"

    invoke-virtual {v1, v3}, Lcom/umeng/common/c;->c(Ljava/lang/String;)I

    move-result v8

    .line 144
    invoke-static {p1}, Lcom/umeng/common/c;->a(Landroid/content/Context;)Lcom/umeng/common/c;

    move-result-object v1

    const-string v3, "umeng_update_id_ignore"

    invoke-virtual {v1, v3}, Lcom/umeng/common/c;->c(Ljava/lang/String;)I

    move-result v4

    .line 145
    invoke-static {p1}, Lcom/umeng/common/c;->a(Landroid/content/Context;)Lcom/umeng/common/c;

    move-result-object v1

    const-string v3, "umeng_update_id_close"

    invoke-virtual {v1, v3}, Lcom/umeng/common/c;->c(Ljava/lang/String;)I

    move-result v9

    .line 147
    const/4 v1, 0x1

    new-array v3, v1, [I

    const/4 v1, 0x0

    const/4 v5, 0x6

    aput v5, v3, v1

    .line 149
    new-instance v5, Landroid/app/Dialog;

    const v1, 0x1030010

    invoke-direct {v5, p1, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 150
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const/4 v10, 0x0

    invoke-virtual {v1, v0, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v10

    .line 152
    new-instance v0, Lcom/umeng/update/g;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/umeng/update/g;-><init>(Lcom/umeng/update/f;I[IILandroid/app/Dialog;)V

    .line 166
    if-lez v7, :cond_1

    .line 167
    invoke-static {p1}, Lcom/umeng/common/b;->l(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz p3, :cond_2

    :cond_0
    const/16 v1, 0x8

    .line 168
    :goto_0
    invoke-virtual {v10, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7, v1}, Landroid/view/View;->setVisibility(I)V

    .line 171
    :cond_1
    new-instance v1, Lcom/umeng/update/h;

    invoke-direct {v1, p0, p4, v3}, Lcom/umeng/update/h;-><init>(Lcom/umeng/update/f;Lcom/umeng/update/UmengDialogButtonListener;[I)V

    invoke-virtual {v5, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 178
    invoke-virtual {v10, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 179
    invoke-virtual {v10, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 180
    invoke-virtual {v10, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 181
    invoke-virtual {v10, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 185
    invoke-virtual {v10, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 186
    invoke-virtual {v0}, Landroid/widget/TextView;->requestFocus()Z

    .line 187
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 189
    invoke-virtual {v5, v10}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 191
    return-object v5

    .line 167
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public a()V
    .locals 1

    .prologue
    .line 86
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/umeng/update/f;->k:Z

    .line 87
    iget-object v0, p0, Lcom/umeng/update/f;->c:Lcom/umeng/update/UmengDownloadListener;

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/umeng/update/f;->c:Lcom/umeng/update/UmengDownloadListener;

    invoke-interface {v0}, Lcom/umeng/update/UmengDownloadListener;->OnDownloadStart()V

    .line 90
    :cond_0
    return-void
.end method

.method public a(I)V
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/umeng/update/f;->c:Lcom/umeng/update/UmengDownloadListener;

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/umeng/update/f;->c:Lcom/umeng/update/UmengDownloadListener;

    invoke-interface {v0, p1}, Lcom/umeng/update/UmengDownloadListener;->OnDownloadUpdate(I)V

    .line 97
    :cond_0
    return-void
.end method

.method public a(IILjava/lang/String;)V
    .locals 1

    .prologue
    .line 101
    packed-switch p1, :pswitch_data_0

    .line 112
    :goto_0
    :pswitch_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/umeng/update/f;->k:Z

    .line 113
    iget-object v0, p0, Lcom/umeng/update/f;->c:Lcom/umeng/update/UmengDownloadListener;

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/umeng/update/f;->c:Lcom/umeng/update/UmengDownloadListener;

    invoke-interface {v0, p1, p3}, Lcom/umeng/update/UmengDownloadListener;->OnDownloadEnd(ILjava/lang/String;)V

    .line 116
    :cond_0
    return-void

    .line 106
    :pswitch_1
    invoke-virtual {p0}, Lcom/umeng/update/f;->d()V

    goto :goto_0

    .line 101
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/umeng/update/UmengDownloadListener;)V
    .locals 1

    .prologue
    .line 46
    iput-object p1, p0, Lcom/umeng/update/f;->h:Landroid/content/Context;

    .line 47
    invoke-static {p1}, Lcom/umeng/common/b;->w(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/update/f;->i:Ljava/lang/String;

    .line 49
    iput-object p2, p0, Lcom/umeng/update/f;->d:Ljava/lang/String;

    .line 50
    iput-object p3, p0, Lcom/umeng/update/f;->e:Ljava/lang/String;

    .line 52
    iput-object p4, p0, Lcom/umeng/update/f;->f:Ljava/lang/String;

    .line 53
    iput-object p5, p0, Lcom/umeng/update/f;->g:Ljava/lang/String;

    .line 55
    iput-object p6, p0, Lcom/umeng/update/f;->c:Lcom/umeng/update/UmengDownloadListener;

    .line 56
    return-void
.end method

.method public b(I)V
    .locals 1

    .prologue
    .line 120
    packed-switch p1, :pswitch_data_0

    .line 127
    :goto_0
    return-void

    .line 122
    :pswitch_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/umeng/update/f;->k:Z

    goto :goto_0

    .line 120
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 59
    iget-boolean v0, p0, Lcom/umeng/update/f;->k:Z

    return v0
.end method

.method public c()V
    .locals 6

    .prologue
    .line 66
    new-instance v0, Lcom/umeng/common/net/a;

    iget-object v1, p0, Lcom/umeng/update/f;->h:Landroid/content/Context;

    iget-object v2, p0, Lcom/umeng/update/f;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/umeng/update/f;->i:Ljava/lang/String;

    iget-object v4, p0, Lcom/umeng/update/f;->f:Ljava/lang/String;

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/umeng/common/net/a;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/umeng/common/net/l;)V

    iput-object v0, p0, Lcom/umeng/update/f;->j:Lcom/umeng/common/net/a;

    .line 68
    iget-object v0, p0, Lcom/umeng/update/f;->j:Lcom/umeng/common/net/a;

    iget-object v1, p0, Lcom/umeng/update/f;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/umeng/common/net/a;->a(Ljava/lang/String;)V

    .line 69
    iget-object v0, p0, Lcom/umeng/update/f;->j:Lcom/umeng/common/net/a;

    iget-object v1, p0, Lcom/umeng/update/f;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/umeng/common/net/a;->b(Ljava/lang/String;)V

    .line 70
    iget-object v0, p0, Lcom/umeng/update/f;->j:Lcom/umeng/common/net/a;

    invoke-virtual {v0}, Lcom/umeng/common/net/a;->a()V

    .line 71
    return-void
.end method

.method public d()V
    .locals 6

    .prologue
    .line 77
    new-instance v0, Lcom/umeng/common/net/a;

    iget-object v1, p0, Lcom/umeng/update/f;->h:Landroid/content/Context;

    iget-object v2, p0, Lcom/umeng/update/f;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/umeng/update/f;->i:Ljava/lang/String;

    iget-object v4, p0, Lcom/umeng/update/f;->d:Ljava/lang/String;

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/umeng/common/net/a;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/umeng/common/net/l;)V

    iput-object v0, p0, Lcom/umeng/update/f;->j:Lcom/umeng/common/net/a;

    .line 79
    iget-object v0, p0, Lcom/umeng/update/f;->j:Lcom/umeng/common/net/a;

    iget-object v1, p0, Lcom/umeng/update/f;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/umeng/common/net/a;->a(Ljava/lang/String;)V

    .line 80
    iget-object v0, p0, Lcom/umeng/update/f;->j:Lcom/umeng/common/net/a;

    iget-object v1, p0, Lcom/umeng/update/f;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/umeng/common/net/a;->b(Ljava/lang/String;)V

    .line 81
    iget-object v0, p0, Lcom/umeng/update/f;->j:Lcom/umeng/common/net/a;

    invoke-virtual {v0}, Lcom/umeng/common/net/a;->a()V

    .line 82
    return-void
.end method
