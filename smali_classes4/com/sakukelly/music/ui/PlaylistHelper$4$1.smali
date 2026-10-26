.class Lcom/sakukelly/music/ui/PlaylistHelper$4$1;
.super Ljava/lang/Object;
.source "PlaylistHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sakukelly/music/ui/PlaylistHelper$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sakukelly/music/ui/PlaylistHelper$4;

.field final synthetic val$count:I


# direct methods
.method constructor <init>(Lcom/sakukelly/music/ui/PlaylistHelper$4;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sakukelly/music/ui/PlaylistHelper$4$1;->this$0:Lcom/sakukelly/music/ui/PlaylistHelper$4;

    iput p2, p0, Lcom/sakukelly/music/ui/PlaylistHelper$4$1;->val$count:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    # v4 = count
    iget v4, p0, Lcom/sakukelly/music/ui/PlaylistHelper$4$1;->val$count:I

    # v2 = context
    iget-object v5, p0, Lcom/sakukelly/music/ui/PlaylistHelper$4$1;->this$0:Lcom/sakukelly/music/ui/PlaylistHelper$4;
    iget-object v2, v5, Lcom/sakukelly/music/ui/PlaylistHelper$4;->val$context:Landroid/content/Context;

    # v3 = playlistName
    iget-object v5, p0, Lcom/sakukelly/music/ui/PlaylistHelper$4$1;->this$0:Lcom/sakukelly/music/ui/PlaylistHelper$4;
    iget-object v3, v5, Lcom/sakukelly/music/ui/PlaylistHelper$4;->val$playlistName:Ljava/lang/String;

    # v0 = AlertDialog$Builder (androidx.appcompat.app.AlertDialog$Builder)
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;
    invoke-direct {v0, v2}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    # v1 = ScrollView wrapper
    new-instance v1, Landroid/widget/ScrollView;
    invoke-direct {v1, v2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    # v9 = root LinearLayout (VERTICAL)
    new-instance v9, Landroid/widget/LinearLayout;
    invoke-direct {v9, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v5, 0x1
    invoke-virtual {v9, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    # Background Liquid Glass
    invoke-static {}, Lcom/sakukelly/music/ui/PlaylistHelper;->createLiquidGlassDrawable()Landroid/graphics/drawable/Drawable;
    move-result-object v5
    invoke-virtual {v9, v5}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    # Padding 36px all sides
    const/16 v5, 0x24
    invoke-virtual {v9, v5, v5, v5, v5}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    # ── Title TextView ──
    new-instance v5, Landroid/widget/TextView;
    invoke-direct {v5, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v6, Ljava/lang/StringBuilder;
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V
    const-string v7, "\uD83C\uDFB5 "
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v6
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v6
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v6
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v6, -0x1
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    const v6, 0x41900000    # 18.0f
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextSize(F)V

    const/16 v6, 0x14
    const/4 v7, 0x0
    invoke-virtual {v5, v7, v7, v7, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    invoke-virtual {v9, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    # ── Subtitle TextView: song count ──
    new-instance v5, Landroid/widget/TextView;
    invoke-direct {v5, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v6, Ljava/lang/StringBuilder;
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V
    const-string v7, "\u2669 "
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v6
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    move-result-object v6
    const-string v7, " canciones en la lista"
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v6
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v6
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v6, -0x1f3c04       # 0xFFE0C3FC
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    const v6, 0x41600000    # 14.0f
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextSize(F)V

    const/16 v6, 0x1c
    const/4 v7, 0x0
    invoke-virtual {v5, v7, v7, v7, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    invoke-virtual {v9, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    # ── Set custom view on builder and create dialog ──
    invoke-virtual {v1, v9}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;
    move-result-object v10

    # ══════════════════════════════════════════════
    # BOTON 1: Reproducir todo (Liquid Violet Pill)
    # ══════════════════════════════════════════════
    new-instance v5, Landroid/widget/Button;
    invoke-direct {v5, v2}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    new-instance v6, Ljava/lang/StringBuilder;
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V
    const-string v7, "\u25B6\uFE0F  Reproducir todo ("
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v6
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    move-result-object v6
    const-string v7, " pistas)"
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v6
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v6
    invoke-virtual {v5, v6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const v6, -0x84d042       # 0xFF7B2FBE
    const v7, -0x4475d41e      # 0xBB8A2BE2
    const/high16 v8, 0x41c00000 # 24.0f
    invoke-static {v6, v7, v8}, Lcom/sakukelly/music/ui/PlaylistHelper;->createPillDrawable(IIF)Landroid/graphics/drawable/Drawable;
    move-result-object v6
    invoke-virtual {v5, v6}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/4 v6, -0x1
    invoke-virtual {v5, v6}, Landroid/widget/Button;->setTextColor(I)V

    const v6, 0x41700000    # 15.0f
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextSize(F)V

    const/16 v6, 0x1c
    invoke-virtual {v5, v6, v6, v6, v6}, Landroid/view/View;->setPadding(IIII)V

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;
    const/4 v7, -0x1
    const/4 v8, -0x2
    invoke-direct {v6, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V
    const/16 v7, 0xc
    iput v7, v6, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I
    invoke-virtual {v5, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v6, Lcom/sakukelly/music/ui/PlaylistHelper$4$1$1;
    invoke-direct {v6, p0, v10}, Lcom/sakukelly/music/ui/PlaylistHelper$4$1$1;-><init>(Lcom/sakukelly/music/ui/PlaylistHelper$4$1;Landroidx/appcompat/app/AlertDialog;)V
    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v9, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    # ══════════════════════════════════════════════
    # BOTON 2: Añadir canciones (Glass Translucent Pill)
    # ══════════════════════════════════════════════
    new-instance v5, Landroid/widget/Button;
    invoke-direct {v5, v2}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    const-string v6, "\u2795  A\u00f1adir canciones de mi biblioteca"
    invoke-virtual {v5, v6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const v6, 0x334b2070
    const v7, -0x7784d042      # 0x887B2FBE
    const/high16 v8, 0x41a00000 # 20.0f
    invoke-static {v6, v7, v8}, Lcom/sakukelly/music/ui/PlaylistHelper;->createPillDrawable(IIF)Landroid/graphics/drawable/Drawable;
    move-result-object v6
    invoke-virtual {v5, v6}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const v6, -0x1f3c04       # 0xFFE0C3FC
    invoke-virtual {v5, v6}, Landroid/widget/Button;->setTextColor(I)V

    const v6, 0x41700000
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextSize(F)V

    const/16 v6, 0x1c
    invoke-virtual {v5, v6, v6, v6, v6}, Landroid/view/View;->setPadding(IIII)V

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;
    const/4 v7, -0x1
    const/4 v8, -0x2
    invoke-direct {v6, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V
    const/16 v7, 0x8
    iput v7, v6, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I
    invoke-virtual {v5, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v6, Lcom/sakukelly/music/ui/PlaylistHelper$4$1$2;
    invoke-direct {v6, p0, v10}, Lcom/sakukelly/music/ui/PlaylistHelper$4$1$2;-><init>(Lcom/sakukelly/music/ui/PlaylistHelper$4$1;Landroidx/appcompat/app/AlertDialog;)V
    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v9, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    # ══════════════════════════════════════════════
    # BOTON 3: Ver y gestionar (Glass Translucent Pill)
    # ══════════════════════════════════════════════
    new-instance v5, Landroid/widget/Button;
    invoke-direct {v5, v2}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    new-instance v6, Ljava/lang/StringBuilder;
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V
    const-string v7, "\uD83D\uDCCB  Ver y gestionar ("
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v6
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    move-result-object v6
    const-string v7, " pistas)"
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v6
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v6
    invoke-virtual {v5, v6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const v6, 0x334b2070
    const v7, -0x7784d042      # 0x887B2FBE
    const/high16 v8, 0x41a00000 # 20.0f
    invoke-static {v6, v7, v8}, Lcom/sakukelly/music/ui/PlaylistHelper;->createPillDrawable(IIF)Landroid/graphics/drawable/Drawable;
    move-result-object v6
    invoke-virtual {v5, v6}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const v6, -0x1f3c04       # 0xFFE0C3FC
    invoke-virtual {v5, v6}, Landroid/widget/Button;->setTextColor(I)V

    const v6, 0x41700000
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextSize(F)V

    const/16 v6, 0x1c
    invoke-virtual {v5, v6, v6, v6, v6}, Landroid/view/View;->setPadding(IIII)V

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;
    const/4 v7, -0x1
    const/4 v8, -0x2
    invoke-direct {v6, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V
    const/16 v7, 0x8
    iput v7, v6, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I
    invoke-virtual {v5, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v6, Lcom/sakukelly/music/ui/PlaylistHelper$4$1$3;
    invoke-direct {v6, p0, v10}, Lcom/sakukelly/music/ui/PlaylistHelper$4$1$3;-><init>(Lcom/sakukelly/music/ui/PlaylistHelper$4$1;Landroidx/appcompat/app/AlertDialog;)V
    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v9, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    # ══════════════════════════════════════════════
    # BOTON 4: Eliminar (Translucent Red-Violet Pill)
    # ══════════════════════════════════════════════
    new-instance v5, Landroid/widget/Button;
    invoke-direct {v5, v2}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    const-string v6, "\uD83D\uDDD1\uFE0F  Eliminar esta lista"
    invoke-virtual {v5, v6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const v6, 0x335c1525
    const v7, -0x7716e19d      # 0x88E91E63
    const/high16 v8, 0x41a00000 # 20.0f
    invoke-static {v6, v7, v8}, Lcom/sakukelly/music/ui/PlaylistHelper;->createPillDrawable(IIF)Landroid/graphics/drawable/Drawable;
    move-result-object v6
    invoke-virtual {v5, v6}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const v6, -0x9475          # 0xFFFF6B8B
    invoke-virtual {v5, v6}, Landroid/widget/Button;->setTextColor(I)V

    const v6, 0x41700000
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextSize(F)V

    const/16 v6, 0x1c
    invoke-virtual {v5, v6, v6, v6, v6}, Landroid/view/View;->setPadding(IIII)V

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;
    const/4 v7, -0x1
    const/4 v8, -0x2
    invoke-direct {v6, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V
    const/16 v7, 0x10
    iput v7, v6, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I
    invoke-virtual {v5, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v6, Lcom/sakukelly/music/ui/PlaylistHelper$4$1$4;
    invoke-direct {v6, p0, v10}, Lcom/sakukelly/music/ui/PlaylistHelper$4$1$4;-><init>(Lcom/sakukelly/music/ui/PlaylistHelper$4$1;Landroidx/appcompat/app/AlertDialog;)V
    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v9, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    # ══════════════════════════════════════════════
    # BOTON 5: Cerrar (Subtle Glass Pill)
    # ══════════════════════════════════════════════
    new-instance v5, Landroid/widget/Button;
    invoke-direct {v5, v2}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    const-string v6, "\u274C  Cerrar"
    invoke-virtual {v5, v6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const v6, 0x22ffffff
    const v7, 0x44ffffff
    const/high16 v8, 0x41a00000 # 20.0f
    invoke-static {v6, v7, v8}, Lcom/sakukelly/music/ui/PlaylistHelper;->createPillDrawable(IIF)Landroid/graphics/drawable/Drawable;
    move-result-object v6
    invoke-virtual {v5, v6}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/4 v6, -0x1
    invoke-virtual {v5, v6}, Landroid/widget/Button;->setTextColor(I)V

    const v6, 0x41700000
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextSize(F)V

    const/16 v6, 0x1c
    invoke-virtual {v5, v6, v6, v6, v6}, Landroid/view/View;->setPadding(IIII)V

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;
    const/4 v7, -0x1
    const/4 v8, -0x2
    invoke-direct {v6, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V
    const/16 v7, 0x8
    iput v7, v6, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I
    const/16 v7, 0x14
    iput v7, v6, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I
    invoke-virtual {v5, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v6, Lcom/sakukelly/music/ui/PlaylistHelper$4$1$5;
    invoke-direct {v6, v10}, Lcom/sakukelly/music/ui/PlaylistHelper$4$1$5;-><init>(Landroidx/appcompat/app/AlertDialog;)V
    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v9, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    # ── Style Window Transparent & Show AlertDialog ──
    invoke-static {v10}, Lcom/sakukelly/music/ui/PlaylistHelper;->styleLiquidDialog(Landroid/app/Dialog;)V

    invoke-virtual {v10}, Landroidx/appcompat/app/AlertDialog;->show()V

    return-void
.end method
