.class public abstract Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;
.super Lorg/jaudiotagger/tag/id3/AbstractTagFrame;
.source "AbstractID3v2Frame.java"

# interfaces
.implements Lorg/jaudiotagger/tag/TagTextField;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame$EncodingFlags;,
        Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame$StatusFlags;
    }
.end annotation


# static fields
.field protected static final TYPE_FRAME:Ljava/lang/String; = "frame"

.field protected static final TYPE_FRAME_SIZE:Ljava/lang/String; = "frameSize"

.field protected static final UNSUPPORTED_ID:Ljava/lang/String; = "Unsupported"


# instance fields
.field encodingFlags:Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame$EncodingFlags;

.field protected frameSize:I

.field protected identifier:Ljava/lang/String;

.field private loggingFilename:Ljava/lang/String;

.field statusFlags:Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame$StatusFlags;


# direct methods
.method protected constructor <init>()V
    .locals 1

    .line 78
    invoke-direct {p0}, Lorg/jaudiotagger/tag/id3/AbstractTagFrame;-><init>()V

    .line 46
    const-string v0, ""

    iput-object v0, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->identifier:Ljava/lang/String;

    .line 54
    iput-object v0, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->loggingFilename:Ljava/lang/String;

    const/4 v0, 0x0

    .line 84
    iput-object v0, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->statusFlags:Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame$StatusFlags;

    .line 89
    iput-object v0, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->encodingFlags:Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame$EncodingFlags;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 5

    const-string v0, "org.jaudiotagger.tag.id3.framebody.FrameBody"

    .line 116
    invoke-direct {p0}, Lorg/jaudiotagger/tag/id3/AbstractTagFrame;-><init>()V

    .line 46
    const-string v1, ""

    iput-object v1, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->identifier:Ljava/lang/String;

    .line 54
    iput-object v1, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->loggingFilename:Ljava/lang/String;

    const/4 v1, 0x0

    .line 84
    iput-object v1, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->statusFlags:Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame$StatusFlags;

    .line 89
    iput-object v1, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->encodingFlags:Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame$EncodingFlags;

    .line 117
    sget-object v1, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->logger:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Creating empty frame of type"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    .line 118
    iput-object p1, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->identifier:Ljava/lang/String;

    .line 125
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 126
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    iput-object v0, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->frameBody:Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 142
    sget-object v1, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->logger:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "IllegalAccessException:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v2, p1, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 143
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catch_1
    move-exception v0

    .line 136
    sget-object v1, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->logger:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "InstantiationException:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v2, p1, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 137
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catch_2
    move-exception v0

    .line 130
    sget-object v1, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->logger:Ljava/util/logging/Logger;

    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V

    .line 131
    new-instance v0, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyUnsupported;

    invoke-direct {v0, p1}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyUnsupported;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->frameBody:Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    .line 145
    :goto_0
    iget-object v0, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->frameBody:Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    invoke-virtual {v0, p0}, Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;->setHeader(Lorg/jaudiotagger/tag/id3/AbstractTagFrame;)V

    .line 146
    instance-of v0, p0, Lorg/jaudiotagger/tag/id3/ID3v24Frame;

    if-eqz v0, :cond_0

    .line 148
    iget-object v0, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->frameBody:Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    invoke-static {}, Lorg/jaudiotagger/tag/TagOptionSingleton;->getInstance()Lorg/jaudiotagger/tag/TagOptionSingleton;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jaudiotagger/tag/TagOptionSingleton;->getId3v24DefaultTextEncoding()B

    move-result v1

    invoke-virtual {v0, v1}, Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;->setTextEncoding(B)V

    goto :goto_1

    .line 150
    :cond_0
    instance-of v0, p0, Lorg/jaudiotagger/tag/id3/ID3v23Frame;

    if-eqz v0, :cond_1

    .line 152
    iget-object v0, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->frameBody:Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    invoke-static {}, Lorg/jaudiotagger/tag/TagOptionSingleton;->getInstance()Lorg/jaudiotagger/tag/TagOptionSingleton;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jaudiotagger/tag/TagOptionSingleton;->getId3v23DefaultTextEncoding()B

    move-result v1

    invoke-virtual {v0, v1}, Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;->setTextEncoding(B)V

    .line 155
    :cond_1
    :goto_1
    sget-object v0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->logger:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Created empty frame of type"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;)V
    .locals 0

    .line 97
    invoke-direct {p0, p1}, Lorg/jaudiotagger/tag/id3/AbstractTagFrame;-><init>(Lorg/jaudiotagger/tag/id3/AbstractTagFrame;)V

    .line 46
    const-string p1, ""

    iput-object p1, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->identifier:Ljava/lang/String;

    .line 54
    iput-object p1, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->loggingFilename:Ljava/lang/String;

    const/4 p1, 0x0

    .line 84
    iput-object p1, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->statusFlags:Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame$StatusFlags;

    .line 89
    iput-object p1, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->encodingFlags:Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame$EncodingFlags;

    return-void
.end method

.method public constructor <init>(Lorg/jaudiotagger/tag/id3/framebody/AbstractID3v2FrameBody;)V
    .locals 1

    .line 105
    invoke-direct {p0}, Lorg/jaudiotagger/tag/id3/AbstractTagFrame;-><init>()V

    .line 46
    const-string v0, ""

    iput-object v0, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->identifier:Ljava/lang/String;

    .line 54
    iput-object v0, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->loggingFilename:Ljava/lang/String;

    const/4 v0, 0x0

    .line 84
    iput-object v0, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->statusFlags:Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame$StatusFlags;

    .line 89
    iput-object v0, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->encodingFlags:Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame$EncodingFlags;

    .line 106
    iput-object p1, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->frameBody:Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    .line 107
    iget-object p1, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->frameBody:Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    invoke-virtual {p1, p0}, Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;->setHeader(Lorg/jaudiotagger/tag/id3/AbstractTagFrame;)V

    return-void
.end method


# virtual methods
.method public copyContent(Lorg/jaudiotagger/tag/TagField;)V
    .locals 0

    return-void
.end method

.method public createStructure()V
    .locals 3

    .line 1020
    invoke-static {}, Lorg/jaudiotagger/audio/mp3/MP3File;->getStructureFormatter()Lorg/jaudiotagger/logging/AbstractTagDisplayFormatter;

    move-result-object v0

    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    const-string v2, "frame"

    invoke-virtual {v0, v2, v1}, Lorg/jaudiotagger/logging/AbstractTagDisplayFormatter;->openHeadingElement(Ljava/lang/String;Ljava/lang/String;)V

    .line 1021
    invoke-static {}, Lorg/jaudiotagger/audio/mp3/MP3File;->getStructureFormatter()Lorg/jaudiotagger/logging/AbstractTagDisplayFormatter;

    move-result-object v0

    invoke-virtual {v0, v2}, Lorg/jaudiotagger/logging/AbstractTagDisplayFormatter;->closeHeadingElement(Ljava/lang/String;)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 1027
    :cond_0
    instance-of v0, p1, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    .line 1032
    :cond_1
    check-cast p1, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;

    .line 1033
    invoke-super {p0, p1}, Lorg/jaudiotagger/tag/id3/AbstractTagFrame;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getContent()Ljava/lang/String;
    .locals 1

    .line 1046
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->getBody()Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;->getUserFriendlyValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEncoding()Ljava/nio/charset/Charset;
    .locals 2

    .line 1056
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->getBody()Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;->getTextEncoding()B

    move-result v0

    .line 1057
    invoke-static {}, Lorg/jaudiotagger/tag/id3/valuepair/TextEncoding;->getInstanceOf()Lorg/jaudiotagger/tag/id3/valuepair/TextEncoding;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/jaudiotagger/tag/id3/valuepair/TextEncoding;->getCharsetForId(I)Ljava/nio/charset/Charset;

    move-result-object v0

    return-object v0
.end method

.method public getEncodingFlags()Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame$EncodingFlags;
    .locals 1

    .line 909
    iget-object v0, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->encodingFlags:Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame$EncodingFlags;

    return-object v0
.end method

.method protected abstract getFrameHeaderSize()I
.end method

.method protected abstract getFrameIdSize()I
.end method

.method protected abstract getFrameSizeSize()I
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 188
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->getIdentifier()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIdentifier()Ljava/lang/String;
    .locals 1

    .line 198
    iget-object v0, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->identifier:Ljava/lang/String;

    return-object v0
.end method

.method protected getLoggingFilename()Ljava/lang/String;
    .locals 1

    .line 165
    iget-object v0, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->loggingFilename:Ljava/lang/String;

    return-object v0
.end method

.method public getRawContent()[B
    .locals 1

    .line 875
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 876
    invoke-virtual {p0, v0}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->write(Ljava/io/ByteArrayOutputStream;)V

    .line 877
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method public getStatusFlags()Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame$StatusFlags;
    .locals 1

    .line 904
    iget-object v0, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->statusFlags:Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame$StatusFlags;

    return-object v0
.end method

.method public isBinary(Z)V
    .locals 0

    return-void
.end method

.method public isEmpty()Z
    .locals 1

    .line 893
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->getBody()Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected isPadding([B)Z
    .locals 3

    const/4 v0, 0x0

    .line 235
    aget-byte v1, p1, v0

    if-nez v1, :cond_0

    const/4 v1, 0x1

    aget-byte v2, p1, v1

    if-nez v2, :cond_0

    const/4 v2, 0x2

    aget-byte v2, p1, v2

    if-nez v2, :cond_0

    const/4 v2, 0x3

    aget-byte p1, p1, v2

    if-nez p1, :cond_0

    return v1

    :cond_0
    return v0
.end method

.method protected readBody(Ljava/lang/String;Ljava/nio/ByteBuffer;I)Lorg/jaudiotagger/tag/id3/framebody/AbstractID3v2FrameBody;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jaudiotagger/tag/InvalidFrameException;,
            Lorg/jaudiotagger/tag/InvalidDataTypeException;
        }
    .end annotation

    const-string v0, "org.jaudiotagger.tag.id3.framebody.FrameBody"

    .line 261
    sget-object v1, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->logger:Ljava/util/logging/Logger;

    const-string v2, "Creating framebody:start"

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V

    .line 265
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    sparse-switch v1, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v1, "XSOT"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x65

    goto/16 :goto_1

    :sswitch_1
    const-string v1, "XSOP"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x64

    goto/16 :goto_1

    :sswitch_2
    const-string v1, "XSOA"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x63

    goto/16 :goto_1

    :sswitch_3
    const-string v1, "WXXX"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x62

    goto/16 :goto_1

    :sswitch_4
    const-string v1, "WPUB"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x61

    goto/16 :goto_1

    :sswitch_5
    const-string v1, "WPAY"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x60

    goto/16 :goto_1

    :sswitch_6
    const-string v1, "WORS"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x5f

    goto/16 :goto_1

    :sswitch_7
    const-string v1, "WOAS"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x5e

    goto/16 :goto_1

    :sswitch_8
    const-string v1, "WOAR"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x5d

    goto/16 :goto_1

    :sswitch_9
    const-string v1, "WOAF"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x5c

    goto/16 :goto_1

    :sswitch_a
    const-string v1, "WCOP"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x5b

    goto/16 :goto_1

    :sswitch_b
    const-string v1, "WCOM"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x5a

    goto/16 :goto_1

    :sswitch_c
    const-string v1, "USLT"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x59

    goto/16 :goto_1

    :sswitch_d
    const-string v1, "USER"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x58

    goto/16 :goto_1

    :sswitch_e
    const-string v1, "UFID"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x57

    goto/16 :goto_1

    :sswitch_f
    const-string v1, "TYER"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x56

    goto/16 :goto_1

    :sswitch_10
    const-string v1, "TXXX"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x55

    goto/16 :goto_1

    :sswitch_11
    const-string v1, "TSST"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x54

    goto/16 :goto_1

    :sswitch_12
    const-string v1, "TSSE"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x53

    goto/16 :goto_1

    :sswitch_13
    const-string v1, "TSRC"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x52

    goto/16 :goto_1

    :sswitch_14
    const-string v1, "TSOT"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x51

    goto/16 :goto_1

    :sswitch_15
    const-string v1, "TSOP"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x50

    goto/16 :goto_1

    :sswitch_16
    const-string v1, "TSOC"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x4f

    goto/16 :goto_1

    :sswitch_17
    const-string v1, "TSOA"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x4e

    goto/16 :goto_1

    :sswitch_18
    const-string v1, "TSO2"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x4d

    goto/16 :goto_1

    :sswitch_19
    const-string v1, "TSIZ"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x4c

    goto/16 :goto_1

    :sswitch_1a
    const-string v1, "TRSO"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x4b

    goto/16 :goto_1

    :sswitch_1b
    const-string v1, "TRSN"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x4a

    goto/16 :goto_1

    :sswitch_1c
    const-string v1, "TRDA"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x49

    goto/16 :goto_1

    :sswitch_1d
    const-string v1, "TRCK"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x48

    goto/16 :goto_1

    :sswitch_1e
    const-string v1, "TPUB"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x47

    goto/16 :goto_1

    :sswitch_1f
    const-string v1, "TPRO"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x46

    goto/16 :goto_1

    :sswitch_20
    const-string v1, "TPOS"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x45

    goto/16 :goto_1

    :sswitch_21
    const-string v1, "TPE4"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x44

    goto/16 :goto_1

    :sswitch_22
    const-string v1, "TPE3"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x43

    goto/16 :goto_1

    :sswitch_23
    const-string v1, "TPE2"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x42

    goto/16 :goto_1

    :sswitch_24
    const-string v1, "TPE1"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x41

    goto/16 :goto_1

    :sswitch_25
    const-string v1, "TOWN"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x40

    goto/16 :goto_1

    :sswitch_26
    const-string v1, "TORY"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x3f

    goto/16 :goto_1

    :sswitch_27
    const-string v1, "TOPE"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x3e

    goto/16 :goto_1

    :sswitch_28
    const-string v1, "TOLY"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x3d

    goto/16 :goto_1

    :sswitch_29
    const-string v1, "TOFN"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x3c

    goto/16 :goto_1

    :sswitch_2a
    const-string v1, "TOAL"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x3b

    goto/16 :goto_1

    :sswitch_2b
    const-string v1, "TMOO"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x3a

    goto/16 :goto_1

    :sswitch_2c
    const-string v1, "TMED"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x39

    goto/16 :goto_1

    :sswitch_2d
    const-string v1, "TMCL"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x38

    goto/16 :goto_1

    :sswitch_2e
    const-string v1, "TLEN"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x37

    goto/16 :goto_1

    :sswitch_2f
    const-string v1, "TLAN"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x36

    goto/16 :goto_1

    :sswitch_30
    const-string v1, "TKEY"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x35

    goto/16 :goto_1

    :sswitch_31
    const-string v1, "TIT3"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x34

    goto/16 :goto_1

    :sswitch_32
    const-string v1, "TIT2"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x33

    goto/16 :goto_1

    :sswitch_33
    const-string v1, "TIT1"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x32

    goto/16 :goto_1

    :sswitch_34
    const-string v1, "TIPL"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x31

    goto/16 :goto_1

    :sswitch_35
    const-string v1, "TIME"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x30

    goto/16 :goto_1

    :sswitch_36
    const-string v1, "TFLT"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x2f

    goto/16 :goto_1

    :sswitch_37
    const-string v1, "TEXT"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x2e

    goto/16 :goto_1

    :sswitch_38
    const-string v1, "TENC"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x2d

    goto/16 :goto_1

    :sswitch_39
    const-string v1, "TDTG"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x2c

    goto/16 :goto_1

    :sswitch_3a
    const-string v1, "TDRL"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x2b

    goto/16 :goto_1

    :sswitch_3b
    const-string v1, "TDRC"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x2a

    goto/16 :goto_1

    :sswitch_3c
    const-string v1, "TDOR"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x29

    goto/16 :goto_1

    :sswitch_3d
    const-string v1, "TDLY"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x28

    goto/16 :goto_1

    :sswitch_3e
    const-string v1, "TDEN"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x27

    goto/16 :goto_1

    :sswitch_3f
    const-string v1, "TDAT"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x26

    goto/16 :goto_1

    :sswitch_40
    const-string v1, "TCOP"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x25

    goto/16 :goto_1

    :sswitch_41
    const-string v1, "TCON"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x24

    goto/16 :goto_1

    :sswitch_42
    const-string v1, "TCMP"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x23

    goto/16 :goto_1

    :sswitch_43
    const-string v1, "TBPM"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x22

    goto/16 :goto_1

    :sswitch_44
    const-string v1, "TALB"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x21

    goto/16 :goto_1

    :sswitch_45
    const-string v1, "SYTC"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x20

    goto/16 :goto_1

    :sswitch_46
    const-string v1, "SYLT"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x1f

    goto/16 :goto_1

    :sswitch_47
    const-string v1, "SIGN"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x1e

    goto/16 :goto_1

    :sswitch_48
    const-string v1, "SEEK"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x1d

    goto/16 :goto_1

    :sswitch_49
    const-string v1, "RVRB"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x1c

    goto/16 :goto_1

    :sswitch_4a
    const-string v1, "RVAD"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x1b

    goto/16 :goto_1

    :sswitch_4b
    const-string v1, "RVA2"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x1a

    goto/16 :goto_1

    :sswitch_4c
    const-string v1, "RBUF"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x19

    goto/16 :goto_1

    :sswitch_4d
    const-string v1, "PRIV"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x18

    goto/16 :goto_1

    :sswitch_4e
    const-string v1, "POSS"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x17

    goto/16 :goto_1

    :sswitch_4f
    const-string v1, "POPM"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x16

    goto/16 :goto_1

    :sswitch_50
    const-string v1, "PCNT"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x14

    goto/16 :goto_1

    :sswitch_51
    const-string v1, "OWNE"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x13

    goto/16 :goto_1

    :sswitch_52
    const-string v1, "MVNM"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x12

    goto/16 :goto_1

    :sswitch_53
    const-string v1, "MVIN"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x11

    goto/16 :goto_1

    :sswitch_54
    const-string v1, "MCDI"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x10

    goto/16 :goto_1

    :sswitch_55
    const-string v1, "LINK"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0xf

    goto/16 :goto_1

    :sswitch_56
    const-string v1, "IPLS"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0xe

    goto/16 :goto_1

    :sswitch_57
    const-string v1, "GRP1"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0xc

    goto/16 :goto_1

    :sswitch_58
    const-string v1, "GRID"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0xd

    goto/16 :goto_1

    :sswitch_59
    const-string v1, "GEOB"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0xb

    goto/16 :goto_1

    :sswitch_5a
    const-string v1, "ETCO"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0xa

    goto/16 :goto_1

    :sswitch_5b
    const-string v1, "EQU2"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x9

    goto/16 :goto_1

    :sswitch_5c
    const-string v1, "ENCR"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x8

    goto/16 :goto_1

    :sswitch_5d
    const-string v1, "CTOC"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x7

    goto :goto_1

    :sswitch_5e
    const-string v1, "COMR"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x5

    goto :goto_1

    :sswitch_5f
    const-string v1, "COMM"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x4

    goto :goto_1

    :sswitch_60
    const-string v1, "CHAP"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x3

    goto :goto_1

    :sswitch_61
    const-string v1, "ASPI"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_1

    :sswitch_62
    const-string v1, "APIC"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_1

    :sswitch_63
    const-string v1, "AENC"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v4

    goto :goto_1

    :sswitch_64
    const-string v1, "PIC"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x15

    goto :goto_1

    :sswitch_65
    const-string v1, "CRM"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x6

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v1, -0x1

    :goto_1
    packed-switch v1, :pswitch_data_0

    .line 677
    new-instance v1, Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 672
    :pswitch_0
    new-instance v0, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyXSOT;

    invoke-direct {v0, p2, p3}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyXSOT;-><init>(Ljava/nio/ByteBuffer;I)V

    goto/16 :goto_3

    .line 668
    :pswitch_1
    new-instance v0, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyXSOP;

    invoke-direct {v0, p2, p3}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyXSOP;-><init>(Ljava/nio/ByteBuffer;I)V

    goto/16 :goto_3

    .line 664
    :pswitch_2
    new-instance v0, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyXSOA;

    invoke-direct {v0, p2, p3}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyXSOA;-><init>(Ljava/nio/ByteBuffer;I)V

    goto/16 :goto_3

    .line 660
    :pswitch_3
    new-instance v0, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyWXXX;

    invoke-direct {v0, p2, p3}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyWXXX;-><init>(Ljava/nio/ByteBuffer;I)V

    goto/16 :goto_3

    .line 656
    :pswitch_4
    new-instance v0, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyWPUB;

    invoke-direct {v0, p2, p3}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyWPUB;-><init>(Ljava/nio/ByteBuffer;I)V

    goto/16 :goto_3

    .line 652
    :pswitch_5
    new-instance v0, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyWPAY;

    invoke-direct {v0, p2, p3}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyWPAY;-><init>(Ljava/nio/ByteBuffer;I)V

    goto/16 :goto_3

    .line 648
    :pswitch_6
    new-instance v0, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyWORS;

    invoke-direct {v0, p2, p3}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyWORS;-><init>(Ljava/nio/ByteBuffer;I)V

    goto/16 :goto_3

    .line 644
    :pswitch_7
    new-instance v0, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyWOAS;

    invoke-direct {v0, p2, p3}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyWOAS;-><init>(Ljava/nio/ByteBuffer;I)V

    goto/16 :goto_3

    .line 640
    :pswitch_8
    new-instance v0, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyWOAR;

    invoke-direct {v0, p2, p3}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyWOAR;-><init>(Ljava/nio/ByteBuffer;I)V

    goto/16 :goto_3

    .line 636
    :pswitch_9
    new-instance v0, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyWOAF;

    invoke-direct {v0, p2, p3}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyWOAF;-><init>(Ljava/nio/ByteBuffer;I)V

    goto/16 :goto_3

    .line 632
    :pswitch_a
    new-instance v0, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyWCOP;

    invoke-direct {v0, p2, p3}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyWCOP;-><init>(Ljava/nio/ByteBuffer;I)V

    goto/16 :goto_3

    .line 628
    :pswitch_b
    new-instance v0, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyWCOM;

    invoke-direct {v0, p2, p3}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyWCOM;-><init>(Ljava/nio/ByteBuffer;I)V

    goto/16 :goto_3

    .line 624
    :pswitch_c
    new-instance v0, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyUSLT;

    invoke-direct {v0, p2, p3}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyUSLT;-><init>(Ljava/nio/ByteBuffer;I)V

    goto/16 :goto_3

    .line 620
    :pswitch_d
    new-instance v0, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyUSER;

    invoke-direct {v0, p2, p3}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyUSER;-><init>(Ljava/nio/ByteBuffer;I)V

    goto/16 :goto_3

    .line 616
    :pswitch_e
    new-instance v0, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyUFID;

    invoke-direct {v0, p2, p3}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyUFID;-><init>(Ljava/nio/ByteBuffer;I)V

    goto/16 :goto_3

    .line 612
    :pswitch_f
    new-instance v0, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTYER;

    invoke-direct {v0, p2, p3}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTYER;-><init>(Ljava/nio/ByteBuffer;I)V

    goto/16 :goto_3

    .line 608
    :pswitch_10
    new-instance v0, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTXXX;

    invoke-direct {v0, p2, p3}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTXXX;-><init>(Ljava/nio/ByteBuffer;I)V

    goto/16 :goto_3

    .line 604
    :pswitch_11
    new-instance v0, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTSST;

    invoke-direct {v0, p2, p3}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTSST;-><init>(Ljava/nio/ByteBuffer;I)V

    goto/16 :goto_3

    .line 600
    :pswitch_12
    new-instance v0, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTSSE;

    invoke-direct {v0, p2, p3}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTSSE;-><init>(Ljava/nio/ByteBuffer;I)V

    goto/16 :goto_3

    .line 596
    :pswitch_13
    new-instance v0, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTSRC;

    invoke-direct {v0, p2, p3}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTSRC;-><init>(Ljava/nio/ByteBuffer;I)V

    goto/16 :goto_3

    .line 592
    :pswitch_14
    new-instance v0, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTSOT;

    invoke-direct {v0, p2, p3}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTSOT;-><init>(Ljava/nio/ByteBuffer;I)V

    goto/16 :goto_3

    .line 588
    :pswitch_15
    new-instance v0, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTSOP;

    invoke-direct {v0, p2, p3}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTSOP;-><init>(Ljava/nio/ByteBuffer;I)V

    goto/16 :goto_3

    .line 584
    :pswitch_16
    new-instance v0, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTSOC;

    invoke-direct {v0, p2, p3}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTSOC;-><init>(Ljava/nio/ByteBuffer;I)V

    goto/16 :goto_3

    .line 580
    :pswitch_17
    new-instance v0, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTSOA;

    invoke-direct {v0, p2, p3}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTSOA;-><init>(Ljava/nio/ByteBuffer;I)V

    goto/16 :goto_3

    .line 576
    :pswitch_18
    new-instance v0, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTSO2;

    invoke-direct {v0, p2, p3}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTSO2;-><init>(Ljava/nio/ByteBuffer;I)V

    goto/16 :goto_3

    .line 572
    :pswitch_19
    new-instance v0, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTSIZ;

    invoke-direct {v0, p2, p3}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTSIZ;-><init>(Ljava/nio/ByteBuffer;I)V

    goto/16 :goto_3

    .line 568
    :pswitch_1a
    new-instance v0, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTRSO;

    invoke-direct {v0, p2, p3}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTRSO;-><init>(Ljava/nio/ByteBuffer;I)V

    goto/16 :goto_3

    .line 564
    :pswitch_1b
    new-instance v0, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTRSN;

    invoke-direct {v0, p2, p3}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTRSN;-><init>(Ljava/nio/ByteBuffer;I)V

    goto/16 :goto_3

    .line 560
    :pswitch_1c
    new-instance v0, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTRDA;

    invoke-direct {v0, p2, p3}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTRDA;-><init>(Ljava/nio/ByteBuffer;I)V

    goto/16 :goto_3

    .line 556
    :pswitch_1d
    new-instance v0, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTRCK;

    invoke-direct {v0, p2, p3}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTRCK;-><init>(Ljava/nio/ByteBuffer;I)V

    goto/16 :goto_3

    .line 552
    :pswitch_1e
    new-instance v0, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTPUB;

    invoke-direct {v0, p2, p3}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTPUB;-><init>(Ljava/nio/ByteBuffer;I)V

    goto/16 :goto_3

    .line 548
    :pswitch_1f
    new-instance v0, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTPRO;

    invoke-direct {v0, p2, p3}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTPRO;-><init>(Ljava/nio/ByteBuffer;I)V

    goto/16 :goto_3

    .line 544
    :pswitch_20
    new-instance v0, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTPOS;

    invoke-direct {v0, p2, p3}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTPOS;-><init>(Ljava/nio/ByteBuffer;I)V

    goto/16 :goto_3

    .line 540
    :pswitch_21
    new-instance v0, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTPE4;

    invoke-direct {v0, p2, p3}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTPE4;-><init>(Ljava/nio/ByteBuffer;I)V

    goto/16 :goto_3

    .line 536
    :pswitch_22
    new-instance v0, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTPE3;

    invoke-direct {v0, p2, p3}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTPE3;-><init>(Ljava/nio/ByteBuffer;I)V

    goto/16 :goto_3

    .line 532
    :pswitch_23
    new-instance v0, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTPE2;

    invoke-direct {v0, p2, p3}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTPE2;-><init>(Ljava/nio/ByteBuffer;I)V

    goto/16 :goto_3

    .line 528
    :pswitch_24
    new-instance v0, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTPE1;

    invoke-direct {v0, p2, p3}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTPE1;-><init>(Ljava/nio/ByteBuffer;I)V

    goto/16 :goto_3

    .line 524
    :pswitch_25
    new-instance v0, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTOWN;

    invoke-direct {v0, p2, p3}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTOWN;-><init>(Ljava/nio/ByteBuffer;I)V

    goto/16 :goto_3

    .line 520
    :pswitch_26
    new-instance v0, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTORY;

    invoke-direct {v0, p2, p3}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTORY;-><init>(Ljava/nio/ByteBuffer;I)V

    goto/16 :goto_3

    .line 516
    :pswitch_27
    new-instance v0, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTOPE;

    invoke-direct {v0, p2, p3}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTOPE;-><init>(Ljava/nio/ByteBuffer;I)V

    goto/16 :goto_3

    .line 512
    :pswitch_28
    new-instance v0, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTOLY;

    invoke-direct {v0, p2, p3}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTOLY;-><init>(Ljava/nio/ByteBuffer;I)V

    goto/16 :goto_3

    .line 508
    :pswitch_29
    new-instance v0, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTOFN;

    invoke-direct {v0, p2, p3}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTOFN;-><init>(Ljava/nio/ByteBuffer;I)V

    goto/16 :goto_3

    .line 504
    :pswitch_2a
    new-instance v0, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTOAL;

    invoke-direct {v0, p2, p3}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTOAL;-><init>(Ljava/nio/ByteBuffer;I)V

    goto/16 :goto_3

    .line 500
    :pswitch_2b
    new-instance v0, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTMOO;

    invoke-direct {v0, p2, p3}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTMOO;-><init>(Ljava/nio/ByteBuffer;I)V

    goto/16 :goto_3

    .line 496
    :pswitch_2c
    new-instance v0, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTMED;

    invoke-direct {v0, p2, p3}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTMED;-><init>(Ljava/nio/ByteBuffer;I)V

    goto/16 :goto_3

    .line 492
    :pswitch_2d
    new-instance v0, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTMCL;

    invoke-direct {v0, p2, p3}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTMCL;-><init>(Ljava/nio/ByteBuffer;I)V

    goto/16 :goto_3

    .line 488
    :pswitch_2e
    new-instance v0, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTLEN;

    invoke-direct {v0, p2, p3}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTLEN;-><init>(Ljava/nio/ByteBuffer;I)V

    goto/16 :goto_3

    .line 484
    :pswitch_2f
    new-instance v0, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTLAN;

    invoke-direct {v0, p2, p3}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTLAN;-><init>(Ljava/nio/ByteBuffer;I)V

    goto/16 :goto_3

    .line 480
    :pswitch_30
    new-instance v0, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTKEY;

    invoke-direct {v0, p2, p3}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTKEY;-><init>(Ljava/nio/ByteBuffer;I)V

    goto/16 :goto_3

    .line 476
    :pswitch_31
    new-instance v0, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTIT3;

    invoke-direct {v0, p2, p3}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTIT3;-><init>(Ljava/nio/ByteBuffer;I)V

    goto/16 :goto_3

    .line 472
    :pswitch_32
    new-instance v0, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTIT2;

    invoke-direct {v0, p2, p3}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTIT2;-><init>(Ljava/nio/ByteBuffer;I)V

    goto/16 :goto_3

    .line 468
    :pswitch_33
    new-instance v0, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTIT1;

    invoke-direct {v0, p2, p3}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTIT1;-><init>(Ljava/nio/ByteBuffer;I)V

    goto/16 :goto_3

    .line 464
    :pswitch_34
    new-instance v0, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTIPL;

    invoke-direct {v0, p2, p3}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTIPL;-><init>(Ljava/nio/ByteBuffer;I)V

    goto/16 :goto_3

    .line 460
    :pswitch_35
    new-instance v0, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTIME;

    invoke-direct {v0, p2, p3}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTIME;-><init>(Ljava/nio/ByteBuffer;I)V

    goto/16 :goto_3

    .line 456
    :pswitch_36
    new-instance v0, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTFLT;

    invoke-direct {v0, p2, p3}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTFLT;-><init>(Ljava/nio/ByteBuffer;I)V

    goto/16 :goto_3

    .line 452
    :pswitch_37
    new-instance v0, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTEXT;

    invoke-direct {v0, p2, p3}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTEXT;-><init>(Ljava/nio/ByteBuffer;I)V

    goto/16 :goto_3

    .line 448
    :pswitch_38
    new-instance v0, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTENC;

    invoke-direct {v0, p2, p3}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTENC;-><init>(Ljava/nio/ByteBuffer;I)V

    goto/16 :goto_3

    .line 444
    :pswitch_39
    new-instance v0, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTDTG;

    invoke-direct {v0, p2, p3}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTDTG;-><init>(Ljava/nio/ByteBuffer;I)V

    goto/16 :goto_3

    .line 440
    :pswitch_3a
    new-instance v0, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTDRL;

    invoke-direct {v0, p2, p3}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTDRL;-><init>(Ljava/nio/ByteBuffer;I)V

    goto/16 :goto_3

    .line 436
    :pswitch_3b
    new-instance v0, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTDRC;

    invoke-direct {v0, p2, p3}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTDRC;-><init>(Ljava/nio/ByteBuffer;I)V

    goto/16 :goto_3

    .line 432
    :pswitch_3c
    new-instance v0, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTDOR;

    invoke-direct {v0, p2, p3}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTDOR;-><init>(Ljava/nio/ByteBuffer;I)V

    goto/16 :goto_3

    .line 428
    :pswitch_3d
    new-instance v0, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTDLY;

    invoke-direct {v0, p2, p3}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTDLY;-><init>(Ljava/nio/ByteBuffer;I)V

    goto/16 :goto_3

    .line 424
    :pswitch_3e
    new-instance v0, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTDEN;

    invoke-direct {v0, p2, p3}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTDEN;-><init>(Ljava/nio/ByteBuffer;I)V

    goto/16 :goto_3

    .line 420
    :pswitch_3f
    new-instance v0, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTDAT;

    invoke-direct {v0, p2, p3}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTDAT;-><init>(Ljava/nio/ByteBuffer;I)V

    goto/16 :goto_3

    .line 416
    :pswitch_40
    new-instance v0, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTCOP;

    invoke-direct {v0, p2, p3}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTCOP;-><init>(Ljava/nio/ByteBuffer;I)V

    goto/16 :goto_3

    .line 412
    :pswitch_41
    new-instance v0, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTCON;

    invoke-direct {v0, p2, p3}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTCON;-><init>(Ljava/nio/ByteBuffer;I)V

    goto/16 :goto_3

    .line 408
    :pswitch_42
    new-instance v0, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTCMP;

    invoke-direct {v0, p2, p3}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTCMP;-><init>(Ljava/nio/ByteBuffer;I)V

    goto/16 :goto_3

    .line 404
    :pswitch_43
    new-instance v0, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTBPM;

    invoke-direct {v0, p2, p3}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTBPM;-><init>(Ljava/nio/ByteBuffer;I)V

    goto/16 :goto_3

    .line 400
    :pswitch_44
    new-instance v0, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTALB;

    invoke-direct {v0, p2, p3}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTALB;-><init>(Ljava/nio/ByteBuffer;I)V

    goto/16 :goto_3

    .line 396
    :pswitch_45
    new-instance v0, Lorg/jaudiotagger/tag/id3/framebody/FrameBodySYTC;

    invoke-direct {v0, p2, p3}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodySYTC;-><init>(Ljava/nio/ByteBuffer;I)V

    goto/16 :goto_3

    .line 392
    :pswitch_46
    new-instance v0, Lorg/jaudiotagger/tag/id3/framebody/FrameBodySYLT;

    invoke-direct {v0, p2, p3}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodySYLT;-><init>(Ljava/nio/ByteBuffer;I)V

    goto/16 :goto_3

    .line 388
    :pswitch_47
    new-instance v0, Lorg/jaudiotagger/tag/id3/framebody/FrameBodySIGN;

    invoke-direct {v0, p2, p3}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodySIGN;-><init>(Ljava/nio/ByteBuffer;I)V

    goto/16 :goto_3

    .line 384
    :pswitch_48
    new-instance v0, Lorg/jaudiotagger/tag/id3/framebody/FrameBodySEEK;

    invoke-direct {v0, p2, p3}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodySEEK;-><init>(Ljava/nio/ByteBuffer;I)V

    goto/16 :goto_3

    .line 380
    :pswitch_49
    new-instance v0, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyRVRB;

    invoke-direct {v0, p2, p3}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyRVRB;-><init>(Ljava/nio/ByteBuffer;I)V

    goto/16 :goto_3

    .line 376
    :pswitch_4a
    new-instance v0, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyRVAD;

    invoke-direct {v0, p2, p3}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyRVAD;-><init>(Ljava/nio/ByteBuffer;I)V

    goto/16 :goto_3

    .line 372
    :pswitch_4b
    new-instance v0, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyRVA2;

    invoke-direct {v0, p2, p3}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyRVA2;-><init>(Ljava/nio/ByteBuffer;I)V

    goto/16 :goto_3

    .line 368
    :pswitch_4c
    new-instance v0, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyRBUF;

    invoke-direct {v0, p2, p3}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyRBUF;-><init>(Ljava/nio/ByteBuffer;I)V

    goto/16 :goto_3

    .line 364
    :pswitch_4d
    new-instance v0, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyPRIV;

    invoke-direct {v0, p2, p3}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyPRIV;-><init>(Ljava/nio/ByteBuffer;I)V

    goto/16 :goto_3

    .line 360
    :pswitch_4e
    new-instance v0, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyPOSS;

    invoke-direct {v0, p2, p3}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyPOSS;-><init>(Ljava/nio/ByteBuffer;I)V

    goto/16 :goto_3

    .line 356
    :pswitch_4f
    new-instance v0, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyPOPM;

    invoke-direct {v0, p2, p3}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyPOPM;-><init>(Ljava/nio/ByteBuffer;I)V

    goto/16 :goto_3

    .line 352
    :pswitch_50
    new-instance v0, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyPIC;

    invoke-direct {v0, p2, p3}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyPIC;-><init>(Ljava/nio/ByteBuffer;I)V

    goto/16 :goto_3

    .line 348
    :pswitch_51
    new-instance v0, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyPCNT;

    invoke-direct {v0, p2, p3}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyPCNT;-><init>(Ljava/nio/ByteBuffer;I)V

    goto/16 :goto_3

    .line 344
    :pswitch_52
    new-instance v0, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyOWNE;

    invoke-direct {v0, p2, p3}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyOWNE;-><init>(Ljava/nio/ByteBuffer;I)V

    goto/16 :goto_3

    .line 340
    :pswitch_53
    new-instance v0, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyMVNM;

    invoke-direct {v0, p2, p3}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyMVNM;-><init>(Ljava/nio/ByteBuffer;I)V

    goto/16 :goto_3

    .line 336
    :pswitch_54
    new-instance v0, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyMVIN;

    invoke-direct {v0, p2, p3}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyMVIN;-><init>(Ljava/nio/ByteBuffer;I)V

    goto/16 :goto_3

    .line 332
    :pswitch_55
    new-instance v0, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyMCDI;

    invoke-direct {v0, p2, p3}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyMCDI;-><init>(Ljava/nio/ByteBuffer;I)V

    goto/16 :goto_3

    .line 328
    :pswitch_56
    new-instance v0, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyLINK;

    invoke-direct {v0, p2, p3}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyLINK;-><init>(Ljava/nio/ByteBuffer;I)V

    goto/16 :goto_3

    .line 324
    :pswitch_57
    new-instance v0, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyIPLS;

    invoke-direct {v0, p2, p3}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyIPLS;-><init>(Ljava/nio/ByteBuffer;I)V

    goto/16 :goto_3

    .line 320
    :pswitch_58
    new-instance v0, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyGRID;

    invoke-direct {v0, p2, p3}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyGRID;-><init>(Ljava/nio/ByteBuffer;I)V

    goto/16 :goto_3

    .line 316
    :pswitch_59
    new-instance v0, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyGRP1;

    invoke-direct {v0, p2, p3}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyGRP1;-><init>(Ljava/nio/ByteBuffer;I)V

    goto/16 :goto_3

    .line 312
    :pswitch_5a
    new-instance v0, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyGEOB;

    invoke-direct {v0, p2, p3}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyGEOB;-><init>(Ljava/nio/ByteBuffer;I)V

    goto/16 :goto_3

    .line 308
    :pswitch_5b
    new-instance v0, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyETCO;

    invoke-direct {v0, p2, p3}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyETCO;-><init>(Ljava/nio/ByteBuffer;I)V

    goto/16 :goto_3

    .line 304
    :pswitch_5c
    new-instance v0, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyEQU2;

    invoke-direct {v0, p2, p3}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyEQU2;-><init>(Ljava/nio/ByteBuffer;I)V

    goto/16 :goto_3

    .line 300
    :pswitch_5d
    new-instance v0, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyENCR;

    invoke-direct {v0, p2, p3}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyENCR;-><init>(Ljava/nio/ByteBuffer;I)V

    goto/16 :goto_3

    .line 296
    :pswitch_5e
    new-instance v0, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyCTOC;

    invoke-direct {v0, p2, p3}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyCTOC;-><init>(Ljava/nio/ByteBuffer;I)V

    goto/16 :goto_3

    .line 292
    :pswitch_5f
    new-instance v0, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyCRM;

    invoke-direct {v0, p2, p3}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyCRM;-><init>(Ljava/nio/ByteBuffer;I)V

    goto/16 :goto_3

    .line 288
    :pswitch_60
    new-instance v0, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyCOMR;

    invoke-direct {v0, p2, p3}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyCOMR;-><init>(Ljava/nio/ByteBuffer;I)V

    goto/16 :goto_3

    .line 284
    :pswitch_61
    new-instance v0, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyCOMM;

    invoke-direct {v0, p2, p3}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyCOMM;-><init>(Ljava/nio/ByteBuffer;I)V

    goto/16 :goto_3

    .line 280
    :pswitch_62
    new-instance v0, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyCHAP;

    invoke-direct {v0, p2, p3}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyCHAP;-><init>(Ljava/nio/ByteBuffer;I)V

    goto/16 :goto_3

    .line 276
    :pswitch_63
    new-instance v0, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyASPI;

    invoke-direct {v0, p2, p3}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyASPI;-><init>(Ljava/nio/ByteBuffer;I)V

    goto/16 :goto_3

    .line 272
    :pswitch_64
    new-instance v0, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyAPIC;

    invoke-direct {v0, p2, p3}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyAPIC;-><init>(Ljava/nio/ByteBuffer;I)V

    goto/16 :goto_3

    .line 268
    :pswitch_65
    new-instance v0, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyAENC;

    invoke-direct {v0, p2, p3}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyAENC;-><init>(Ljava/nio/ByteBuffer;I)V

    goto/16 :goto_3

    .line 677
    :goto_2
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 678
    new-array v1, v2, [Ljava/lang/Class;

    const-string v2, "java.nio.ByteBuffer"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    aput-object v2, v1, v4

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v2, v1, v3

    .line 679
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {p2, v2}, [Ljava/lang/Object;

    move-result-object v2

    .line 680
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 681
    invoke-virtual {v0, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jaudiotagger/tag/id3/framebody/AbstractID3v2FrameBody;
    :try_end_0
    .catch Lorg/jaudiotagger/tag/InvalidTagException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_3

    :catch_0
    move-exception p1

    .line 748
    sget-object p2, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->logger:Ljava/util/logging/Logger;

    sget-object p3, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->getLoggingFilename()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":Illegal access exception :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, p3, v0, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 749
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-virtual {p1}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p2

    :catch_1
    move-exception p1

    .line 742
    sget-object p2, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->logger:Ljava/util/logging/Logger;

    sget-object p3, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->getLoggingFilename()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":Instantiation exception:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/InstantiationException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, p3, v0, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 743
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-virtual {p1}, Ljava/lang/InstantiationException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p2

    :catch_2
    move-exception p1

    .line 736
    sget-object p2, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->logger:Ljava/util/logging/Logger;

    sget-object p3, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->getLoggingFilename()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":No such method:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/NoSuchMethodException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, p3, v0, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 737
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-virtual {p1}, Ljava/lang/NoSuchMethodException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p2

    :catch_3
    move-exception p2

    .line 711
    sget-object p3, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->logger:Ljava/util/logging/Logger;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->getLoggingFilename()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":An error occurred within abstractID3v2FrameBody for identifier:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ":"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V

    .line 712
    invoke-virtual {p2}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    instance-of p1, p1, Ljava/lang/Error;

    if-nez p1, :cond_4

    .line 716
    invoke-virtual {p2}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    instance-of p1, p1, Ljava/lang/RuntimeException;

    if-nez p1, :cond_3

    .line 720
    invoke-virtual {p2}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    instance-of p1, p1, Lorg/jaudiotagger/tag/InvalidFrameException;

    if-nez p1, :cond_2

    .line 724
    invoke-virtual {p2}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    instance-of p1, p1, Lorg/jaudiotagger/tag/InvalidDataTypeException;

    if-eqz p1, :cond_1

    .line 726
    invoke-virtual {p2}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    check-cast p1, Lorg/jaudiotagger/tag/InvalidDataTypeException;

    throw p1

    .line 730
    :cond_1
    new-instance p1, Lorg/jaudiotagger/tag/InvalidFrameException;

    invoke-virtual {p2}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/jaudiotagger/tag/InvalidFrameException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 722
    :cond_2
    invoke-virtual {p2}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    check-cast p1, Lorg/jaudiotagger/tag/InvalidFrameException;

    throw p1

    .line 718
    :cond_3
    invoke-virtual {p2}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    check-cast p1, Ljava/lang/RuntimeException;

    throw p1

    .line 714
    :cond_4
    invoke-virtual {p2}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    check-cast p1, Ljava/lang/Error;

    throw p1

    .line 691
    :catch_4
    sget-object v0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->logger:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->getLoggingFilename()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":Identifier not recognised:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " using FrameBodyUnsupported"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    .line 694
    :try_start_1
    new-instance v0, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyUnsupported;

    invoke-direct {v0, p2, p3}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyUnsupported;-><init>(Ljava/nio/ByteBuffer;I)V
    :try_end_1
    .catch Lorg/jaudiotagger/tag/InvalidFrameException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Lorg/jaudiotagger/tag/InvalidTagException; {:try_start_1 .. :try_end_1} :catch_5

    .line 752
    :goto_3
    sget-object p1, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->logger:Ljava/util/logging/Logger;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->getLoggingFilename()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, ":Created framebody:end"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {v0}, Lorg/jaudiotagger/tag/id3/framebody/AbstractID3v2FrameBody;->getIdentifier()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V

    .line 753
    invoke-virtual {v0, p0}, Lorg/jaudiotagger/tag/id3/framebody/AbstractID3v2FrameBody;->setHeader(Lorg/jaudiotagger/tag/id3/AbstractTagFrame;)V

    return-object v0

    :catch_5
    move-exception p1

    .line 704
    new-instance p2, Lorg/jaudiotagger/tag/InvalidFrameException;

    invoke-virtual {p1}, Lorg/jaudiotagger/tag/InvalidTagException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lorg/jaudiotagger/tag/InvalidFrameException;-><init>(Ljava/lang/String;)V

    throw p2

    :catch_6
    move-exception p1

    .line 700
    throw p1

    :catch_7
    move-exception p1

    .line 686
    new-instance p2, Lorg/jaudiotagger/tag/InvalidFrameException;

    invoke-virtual {p1}, Lorg/jaudiotagger/tag/InvalidTagException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lorg/jaudiotagger/tag/InvalidFrameException;-><init>(Ljava/lang/String;)V

    throw p2

    :sswitch_data_0
    .sparse-switch
        0x105be -> :sswitch_65
        0x1356a -> :sswitch_64
        0x1e98d9 -> :sswitch_63
        0x1ec189 -> :sswitch_62
        0x1ecdab -> :sswitch_61
        0x1f8b54 -> :sswitch_60
        0x1fa70c -> :sswitch_5f
        0x1fa711 -> :sswitch_5e
        0x1fba05 -> :sswitch_5d
        0x208ad8 -> :sswitch_5c
        0x209829 -> :sswitch_5b
        0x20a15b -> :sswitch_5a
        0x215331 -> :sswitch_59
        0x218346 -> :sswitch_58
        0x21840c -> :sswitch_57
        0x2264ee -> :sswitch_56
        0x23a7fa -> :sswitch_55
        0x24049b -> :sswitch_54
        0x244c8e -> :sswitch_53
        0x244d28 -> :sswitch_52
        0x25399f -> :sswitch_51
        0x2562f9 -> :sswitch_50
        0x25903c -> :sswitch_4f
        0x25909f -> :sswitch_4e
        0x259aaf -> :sswitch_4d
        0x2648c1 -> :sswitch_4c
        0x269155 -> :sswitch_4b
        0x269167 -> :sswitch_4a
        0x269374 -> :sswitch_49
        0x26c678 -> :sswitch_48
        0x26d5bd -> :sswitch_47
        0x27126e -> :sswitch_46
        0x271355 -> :sswitch_45
        0x272ca3 -> :sswitch_44
        0x2730eb -> :sswitch_43
        0x273452 -> :sswitch_42
        0x27348e -> :sswitch_41
        0x273490 -> :sswitch_40
        0x2736a3 -> :sswitch_3f
        0x273719 -> :sswitch_3e
        0x2737fd -> :sswitch_3d
        0x273853 -> :sswitch_3c
        0x2738a1 -> :sswitch_3b
        0x2738aa -> :sswitch_3a
        0x2738e3 -> :sswitch_39
        0x273be6 -> :sswitch_38
        0x273d2d -> :sswitch_37
        0x273f7a -> :sswitch_36
        0x274acd -> :sswitch_35
        0x274b31 -> :sswitch_34
        0x274b92 -> :sswitch_33
        0x274b93 -> :sswitch_32
        0x274b94 -> :sswitch_31
        0x27516b -> :sswitch_30
        0x2754a5 -> :sswitch_2f
        0x275521 -> :sswitch_2e
        0x2758a2 -> :sswitch_2d
        0x2758d8 -> :sswitch_2c
        0x275a19 -> :sswitch_2b
        0x275fe6 -> :sswitch_2a
        0x276083 -> :sswitch_29
        0x276148 -> :sswitch_28
        0x2761b0 -> :sswitch_27
        0x276202 -> :sswitch_26
        0x276292 -> :sswitch_25
        0x276408 -> :sswitch_24
        0x276409 -> :sswitch_23
        0x27640a -> :sswitch_22
        0x27640b -> :sswitch_21
        0x276560 -> :sswitch_20
        0x2765b9 -> :sswitch_1f
        0x276609 -> :sswitch_1e
        0x276b66 -> :sswitch_1d
        0x276b7b -> :sswitch_1c
        0x276d59 -> :sswitch_1b
        0x276d5a -> :sswitch_1a
        0x276ff0 -> :sswitch_19
        0x277082 -> :sswitch_18
        0x277091 -> :sswitch_17
        0x277093 -> :sswitch_16
        0x2770a0 -> :sswitch_15
        0x2770a4 -> :sswitch_14
        0x2770f0 -> :sswitch_13
        0x277111 -> :sswitch_12
        0x277120 -> :sswitch_11
        0x278484 -> :sswitch_10
        0x2785f2 -> :sswitch_f
        0x27b36c -> :sswitch_e
        0x27e3cb -> :sswitch_d
        0x27e4a6 -> :sswitch_c
        0x2891aa -> :sswitch_b
        0x2891ad -> :sswitch_a
        0x28bcfd -> :sswitch_9
        0x28bd09 -> :sswitch_8
        0x28bd0a -> :sswitch_7
        0x28bf19 -> :sswitch_6
        0x28c0d1 -> :sswitch_5
        0x28c326 -> :sswitch_4
        0x28e1a1 -> :sswitch_3
        0x29420d -> :sswitch_2
        0x29421c -> :sswitch_1
        0x294220 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_65
        :pswitch_64
        :pswitch_63
        :pswitch_62
        :pswitch_61
        :pswitch_60
        :pswitch_5f
        :pswitch_5e
        :pswitch_5d
        :pswitch_5c
        :pswitch_5b
        :pswitch_5a
        :pswitch_59
        :pswitch_58
        :pswitch_57
        :pswitch_56
        :pswitch_55
        :pswitch_54
        :pswitch_53
        :pswitch_52
        :pswitch_51
        :pswitch_50
        :pswitch_4f
        :pswitch_4e
        :pswitch_4d
        :pswitch_4c
        :pswitch_4b
        :pswitch_4a
        :pswitch_49
        :pswitch_48
        :pswitch_47
        :pswitch_46
        :pswitch_45
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected readBody(Ljava/lang/String;Lorg/jaudiotagger/tag/id3/framebody/AbstractID3v2FrameBody;)Lorg/jaudiotagger/tag/id3/framebody/AbstractID3v2FrameBody;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jaudiotagger/tag/InvalidFrameException;
        }
    .end annotation

    .line 820
    const-string v0, "FrameBody"

    .line 0
    const-string v1, "org.jaudiotagger.tag.id3.framebody.FrameBody"

    .line 820
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x1

    .line 821
    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 822
    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object v3

    .line 823
    invoke-virtual {v1, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 824
    invoke-virtual {v1, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jaudiotagger/tag/id3/framebody/AbstractID3v2FrameBody;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 868
    sget-object p1, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->logger:Ljava/util/logging/Logger;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "frame Body created"

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/jaudiotagger/tag/id3/framebody/AbstractID3v2FrameBody;->getIdentifier()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 869
    invoke-virtual {v1, p0}, Lorg/jaudiotagger/tag/id3/framebody/AbstractID3v2FrameBody;->setHeader(Lorg/jaudiotagger/tag/id3/AbstractTagFrame;)V

    return-object v1

    :catch_0
    move-exception p1

    .line 864
    sget-object p2, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->logger:Ljava/util/logging/Logger;

    sget-object v0, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Illegal access exception :"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 865
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-virtual {p1}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p2

    :catch_1
    move-exception p1

    .line 858
    sget-object p2, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->logger:Ljava/util/logging/Logger;

    sget-object v0, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Instantiation exception:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/InstantiationException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 859
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-virtual {p1}, Ljava/lang/InstantiationException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p2

    :catch_2
    move-exception p1

    .line 839
    sget-object p2, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->logger:Ljava/util/logging/Logger;

    const-string v0, "An error occurred within abstractID3v2FrameBody"

    invoke-virtual {p2, v0}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V

    .line 840
    sget-object p2, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->logger:Ljava/util/logging/Logger;

    sget-object v0, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invocation target exception:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    invoke-virtual {p2, v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 841
    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    instance-of p2, p2, Ljava/lang/Error;

    if-nez p2, :cond_1

    .line 845
    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    instance-of p2, p2, Ljava/lang/RuntimeException;

    if-eqz p2, :cond_0

    .line 847
    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    check-cast p1, Ljava/lang/RuntimeException;

    throw p1

    .line 851
    :cond_0
    new-instance p2, Lorg/jaudiotagger/tag/InvalidFrameException;

    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lorg/jaudiotagger/tag/InvalidFrameException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 843
    :cond_1
    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    check-cast p1, Ljava/lang/Error;

    throw p1

    :catch_3
    move-exception v1

    .line 834
    sget-object v2, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->logger:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "No such method:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/NoSuchMethodException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 835
    new-instance v1, Lorg/jaudiotagger/tag/InvalidFrameException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " does not have a constructor that takes:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Lorg/jaudiotagger/tag/InvalidFrameException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 828
    :catch_4
    sget-object p2, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->logger:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Identifier not recognised:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " unable to create framebody"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    .line 829
    new-instance p2, Lorg/jaudiotagger/tag/InvalidFrameException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " does not exist"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lorg/jaudiotagger/tag/InvalidFrameException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method protected readEncryptedBody(Ljava/lang/String;Ljava/nio/ByteBuffer;I)Lorg/jaudiotagger/tag/id3/framebody/AbstractID3v2FrameBody;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jaudiotagger/tag/InvalidFrameException;,
            Lorg/jaudiotagger/tag/InvalidDataTypeException;
        }
    .end annotation

    .line 223
    :try_start_0
    new-instance v0, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyEncrypted;

    invoke-direct {v0, p1, p2, p3}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyEncrypted;-><init>(Ljava/lang/String;Ljava/nio/ByteBuffer;I)V

    .line 224
    invoke-virtual {v0, p0}, Lorg/jaudiotagger/tag/id3/framebody/AbstractID3v2FrameBody;->setHeader(Lorg/jaudiotagger/tag/id3/AbstractTagFrame;)V
    :try_end_0
    .catch Lorg/jaudiotagger/tag/InvalidTagException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    .line 229
    new-instance p2, Lorg/jaudiotagger/tag/InvalidDataTypeException;

    invoke-direct {p2, p1}, Lorg/jaudiotagger/tag/InvalidDataTypeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method protected readIdentifier(Ljava/nio/ByteBuffer;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jaudiotagger/tag/PaddingException;,
            Lorg/jaudiotagger/tag/InvalidFrameException;
        }
    .end annotation

    .line 768
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->getFrameIdSize()I

    move-result v0

    new-array v0, v0, [B

    .line 771
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->getFrameIdSize()I

    move-result v1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    if-gt v1, v2, :cond_0

    const/4 v1, 0x0

    .line 773
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->getFrameIdSize()I

    move-result v2

    invoke-virtual {p1, v0, v1, v2}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 776
    :cond_0
    invoke-virtual {p0, v0}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->isPadding([B)Z

    move-result v1

    if-nez v1, :cond_2

    .line 781
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->getFrameHeaderSize()I

    move-result v1

    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->getFrameIdSize()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result p1

    if-gt v1, p1, :cond_1

    .line 788
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/lang/String;-><init>([B)V

    iput-object p1, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->identifier:Ljava/lang/String;

    .line 789
    sget-object p1, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->logger:Ljava/util/logging/Logger;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->getLoggingFilename()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":Identifier is"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->identifier:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 790
    iget-object p1, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->identifier:Ljava/lang/String;

    return-object p1

    .line 783
    :cond_1
    sget-object p1, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->logger:Ljava/util/logging/Logger;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->getLoggingFilename()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":No space to find another frame:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 784
    new-instance p1, Lorg/jaudiotagger/tag/InvalidFrameException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->getLoggingFilename()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":No space to find another frame"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/jaudiotagger/tag/InvalidFrameException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 778
    :cond_2
    new-instance p1, Lorg/jaudiotagger/tag/PaddingException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->getLoggingFilename()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":only padding found"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/jaudiotagger/tag/PaddingException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 1

    .line 1067
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Not implemented please use the generic tag methods for setting content"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected setLoggingFilename(Ljava/lang/String;)V
    .locals 0

    .line 175
    iput-object p1, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->loggingFilename:Ljava/lang/String;

    return-void
.end method

.method public abstract write(Ljava/io/ByteArrayOutputStream;)V
.end method
